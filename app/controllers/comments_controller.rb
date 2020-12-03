class CommentsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_thread, only: [:create]
  before_action :set_bookclub, only: [:create]


  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    authorize @comment
    @comment.bookclub_thread = @bookclub_thread
    if @comment.save
      redirect_to bookclub_path(@bookclub, anchor: "form-input")
      flash[:notice] = "Your comment was successfully posted!"
    else
      flash[:notice] = "Creating comment failed"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    authorize @comment
    @bookclub = @comment.bookclub_thread.bookclub
    @comment.destroy
    redirect_to bookclub_path(@bookclub)
  end

  private

  def set_bookclub
    @bookclub = Bookclub.find(params[:bookclub_id])
  end

  def set_thread
    @bookclub_thread = BookclubThread.find(params[:bookclub_thread_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
