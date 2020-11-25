class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_booking

  def create
    if current_user == book.user
      flash[:alert] = "You cannot creating a booking for your own book."
    else
      start_date = Date.parse(booking_params[:from])
      end_date = Date.parse(booking_params[:until])
      days = (end_date - start_date).to_i + 1



    end
  end

  private

  def booking_params
    params.require(:booking).permit(:from, :until)
  end

  def set_booking
    @book = Book.find(params[:book_id])
    authorize @booking
  end
end
