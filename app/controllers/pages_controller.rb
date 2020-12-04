class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show, :about ]

  def home
    @books = Book.search(params[:query]) if params[:query].present?
  end

  def show
    @bookclub = Bookclub.new
    @user = current_user
    @santi = params[:booking_created] if params[:booking_created].present?

    respond_to do |format|
      format.html
      format.js
    end
    @booking = current_user.bookings
  end

  def profile
    @user = User.find(params[:id])
  end
  def about
  end
end
