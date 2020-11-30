class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show ]

  def home
  end

  def show
    @user = current_user
    @booking = current_user.bookings
  end
end
