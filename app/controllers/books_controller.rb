class BooksController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def show
    @book = Book.find(params[:id])
    authorize @book
    @review = Review.new
  end

  def index
    @books = policy_scope(Book).all
    @users = User.near(current_user.address, 10)
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user })
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
