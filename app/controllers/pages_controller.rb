class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show ]

  def home
    @books = Book.search(params[:query]) if params[:query].present?
  end

  def show
    @user = current_user
  end
end
