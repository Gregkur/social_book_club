class BookclubThreadsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_bookclub, only: [:new]

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
      render :new
    end
  end

  private

  def set_bookclub
    @bookclub = Bookclub.find(params[:id])
  end

  def thread_params
    params.require(:bookclub_thread).permit(:title, :content)
  end
end
