class BookclubsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bookclub, only: [:edit, :update, :destroy]

  def index
    @bookclubs = policy_scope(Bookclub).all
    @bookclubs = Bookclub.search(params[:query]) if params[:query].present?
    @users = User.near(current_user.address, 10).where.not(id: current_user.id)
    # @markers = @users.geocoded.map do |user|
    #   {
    #     lat: user.latitude,
    #     lng: user.longitude,
    #     infoWindow: render_to_string(partial: "info_window", locals: { user: user })
    #   }
    # end
  end

  def show
    @bookclub = Bookclub.find(params[:id])
    ## Limiting the amount of shown users
    @bookclub_users = @bookclub.bookclub_users
    ## Math to calculate the amount of books
    @bookclub_books = []
    @bookclub_users.each do |user|
      user.user.books.each do |book|
        @bookclub_books << book
      end
    end
    authorize @bookclub
    @bookclub_thread = BookclubThread.new
    @bookclub_thread.bookclub = @bookclub
    authorize @bookclub_thread
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

  def join
    @bookclub = Bookclub.find(params[:id]) 
    authorize @bookclub
    @user = current_user
    @bookclub_user = BookclubUser.new(bookclub: @bookclub, user: @user)
    if @bookclub_user.save
      redirect_to bookclub_path(@bookclub)
    else
      flash[:notice] = "Joining failed!"
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
