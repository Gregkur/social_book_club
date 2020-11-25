class BookingsController < ApplicationController

  def destroy
    @booking = Booking.find(params[:id])
    @book = Book.find(params[:id])
    @booking.book = @book
    @booking.destroy
    redirect_to page_path(current_user)
  end

end
