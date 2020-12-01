class BookclubThreadsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_bookclub, only: [:create, :edit, :update, :destroy]

  def create
    @bookclub_thread = BookclubThread.new(thread_params)
    @bookclub_thread.user = current_user
    authorize @bookclub_thread
    @bookclub_thread.bookclub = @bookclub
    if @bookclub_thread.save
      redirect_to bookclub_path(@bookclub)
      flash[:notice] = "Your thread was successfully posted!"
    else
      flash[:notice] = "Creating thread failed"
    end
  end

  def edit
    @bookclub_thread = BookclubThread.find(params[:id])
    authorize @bookclub_thread
  end

  def update
    @bookclub_thread = BookclubThread.find(params[:id])
    authorize @bookclub_thread
    @bookclub_thread.update(thread_params)
    if @bookclub_thread.save
      flash[:notice] = "Your thread was successfully updated!"
      redirect_to bookclub_path(@bookclub)
    else
      render :edit
      flash[:notice] = "Updating thread failed"
    end
  end

  def destroy
    @bookclub_thread = BookclubThread.find(params[:bookclub_id])
    authorize @bookclub_thread
    @bookclub = Bookclub.find(params[:id])
    @bookclub_thread.destroy
    redirect_to bookclub_path(@bookclub)
  end

  private

  def set_bookclub
    @bookclub = Bookclub.find(params[:bookclub_id])
  end

  def thread_params
    params.require(:bookclub_thread).permit(:title, :content)
  end
end
