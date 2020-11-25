class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def show
    @book = Book.find(params[:id])
    # @booking = Booking.new
    # @booking_created = false
    # @booking_created = true if params[:booking_created]
  end
end
