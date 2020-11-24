class BooksController < ApplicationController
  before_action :set_book, only: [:new, :create]
  def new
    @book = current_user.books.new
    authorize @book
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

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :description, :year, :pages, photos: [])
  end

  def set_book
    @book = Book.find(params[:id])
    authorize @book
  end
end
