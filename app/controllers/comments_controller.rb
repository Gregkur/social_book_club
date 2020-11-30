class CommentsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_thread, only: [:new, :create, :edit, :update, :destroy]

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    authorize @comment
    @bookclub_thread.comment = @comment
    if @comment.save
      redirect_to bookclub_path(@bookclub)
      flash[:notice] = "Your comment was successfully posted!"
    else
      flash[:notice] = "Creating comment failed"
    end
  end


  private

  def set_thread
    @bookclub_thread = BookclubThread.find(params[:bookclub_thread_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
