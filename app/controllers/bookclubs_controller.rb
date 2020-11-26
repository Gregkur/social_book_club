class BookclubsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bookclub, only: [:edit, :update, :destroy]

  def show
    @bookclub = Bookclub.find(params[:id])
    authorize @bookclub
  end
  
  def new
    @bookclub = Bookclub.new
    authorize @bookclub
  end

  def create
    @bookclub = Bookclub.new(bookclub_params)
    @bookclub.photos.attach(params[:bookclub][:photos])
    authorize @bookclub
    @bookclub.user = current_user
    if @bookclub.save
      flash[:notice] = "Created successfully!"
      redirect_to bookclub_path(@bookclub)
    else
      flash[:notice] = "Creating book club failed"
      render :new
    end
  end

  private

  def set_bookclub
    @bookclub = Bookclub.find(params[:bookclub])
    authorize @bookclub
  end

  def bookclub_params
    params.require(:bookclub).permit(:name, :description, :visibility, photos: [])
  end
end
