class ReviewsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    @review.book = @book
    if @review.save
      redirect_to book_path(@book)
    else
      puts "error"
    end
  end

  def destroy
    @review.destroy
    redirect_to book_path(@book)
  end

  private

  def review_params
    params.require(:review).permit(:book_rating, :book_comment)
  end
end
