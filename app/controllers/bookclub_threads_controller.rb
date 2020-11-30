class BookclubThreadsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_thread, only: [:new, :edit, :update, :destroy]

  def create

  end


  private

  def set_thread
    @bookclub_thread = BookclubThread.find(params[:bookclub_thread])
    authorize @bookclub_thread
  end

  def thread_params
    params.require(:bookclub_thread).permit(:title, :content)

  end
end
