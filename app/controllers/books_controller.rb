class BooksController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show, :update]
  def show
    @book = Book.find(params[:id])
    authorize @book
    # @booking = Booking.new
    # @booking_created = false
    # @booking_created = true if params[:booking_created]
  end
  
  def index
    @books = policy_scope(Book).all
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

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :description, :year, :pages, photos: [])
  end
end
