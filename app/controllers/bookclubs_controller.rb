class BookclubsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bookclub, only: [:show, :edit, :update, :destroy]

  def new
    @bookclub = Bookclub.new
    authorize @bookclub
  end

  def create
    @bookclub = Bookclub.new
    authorize @bookclub
    if @bookclub.save
      redirect_to bookclub_path(@bookclub)
    else
      render :new
    end
  end

  private

  def set_bookclub
    @bookclub = Bookclub.find(params[:bookclub])
    authorize @bookclub
  end

  def bookclub_params
    params.require(:bookclub).permit(:name, :description, :visibility)
  end
end
