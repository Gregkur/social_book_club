class ReviewsController < ApplicationController
  before_action :set_book, only: [:new, :create, :edit, :update]
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    authorize @review
    @review.book = @book
    if @review.save
      redirect_to book_path(@book)
    else
      puts "error"
    end
  end

  def edit
    @review = Review.find(params[:id])
    authorize @review
  end

  def update
    @review = Review.find(params[:id])
    authorize @review
    @review.update(review_params)
    redirect_to book_path(@review.book)

  end

  def destroy
    @review = Review.find(params[:book_id])
    authorize @review
    @book = Book.find(params[:id])
    @review.delete
    redirect_to book_path(@book)
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def review_params
    params.require(:review).permit(:book_rating, :book_comment)
  end
end
