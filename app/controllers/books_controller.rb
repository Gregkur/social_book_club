class BooksController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def show
    @booking = Booking.new
    @book = Book.find(params[:id])
    authorize @book
    @review = Review.new
  end

  def index
    @books = policy_scope(Book).all

    if user_signed_in?
      @location = current_user.address
      @users = User.near(@location, 10).where.not(id: current_user.id)
    elsif !user_signed_in? && cookies[:location] == nil
      @location = 'Berlin, Mitte'
      @users = User.near(@location, 10)
    else
      @location = cookies[:location].split("|")
      @users = User.near(@location, 10)
    end

    @books = @users.map { |user| user.books }.flatten
    @books = Book.search(params[:query]) if params[:query].present?
    @users = User.near(@location, 10).where(books: @books).where.not(id: current_user.id)

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url('book_icon.png')
      }
    end
  end

  def new
    @book = current_user.books.new
    authorize @book
  end

  def edit
  end

  def create
    @book = current_user.books.new(book_params)
    authorize @book
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def update
    @book.update(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :description, :year, :pages, photos: [])
  end

  def set_book
    @book = Book.find(params[:id])
    authorize @book
  end
end
