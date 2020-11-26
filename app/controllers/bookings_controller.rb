class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_book

  def new
    @booking = Booking.new
  end

  def create
    if current_user == @book.user
      flash[:alert] = "You cannot create a booking for your own book."
      @review = Review.new
      render "books/show"
    else
      @start_date = Date.parse(params[:from])
      @end_date = Date.parse(params[:until])
      # @start_date = Date.new(params['booking']['from(1i)'].to_i, params['booking']['from(2i)'].to_i, params['booking']['from(3i)'].to_i)
      # @end_date = Date.new(params['booking']['until(1i)'].to_i, params['booking']['until(2i)'].to_i, params['booking']['until(3i)'].to_i)
      # @days = (end_date - start_date).to_i + 1
      @booking = Booking.new(booking_params)
      @booking.book = @book
      # @booking.total = @days
      @booking.user = current_user
      if @booking.save
        flash[:notice] = "Booked successfully!"
        redirect_to page_path(current_user)
      else
        flash[:notice] = "Booking failed."
        @review = Review.new
        render "books/show"
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:from, :until)
  end

  def set_book
    @book = Book.find(params[:book_id])
    authorize @book
  end
end
