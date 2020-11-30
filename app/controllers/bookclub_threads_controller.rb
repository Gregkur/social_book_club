class BookclubThreadsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_thread, only: [:new]

  # def new
  #   @bookclub_thread = BookclubThread.new(thread_params)
  #   authorize @bookclub_thread
  # end

  def create
    @bookclub_thread = BookclubThread.new(thread_params)
    authorize @bookclub_thread
    @bookclub_thread.user = current_user
    if @bookclub_thread.save
      redirect_to bookclub_path(@bookclub)
      flash[:notice] = "Your thread was successfully posted!"
    else
      render :new
    end
  end

  private

  def set_bookclub
    @bookclub = Bookclub.find(params[:bookclub_id])
  end

  def thread_params
    params.require(:bookclub_thread).permit(:title, :content)
  end
end
