class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    if redirect_to myinterior_path(@comment.myinterior.id)
    else
      render :show
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, myinterior_id: params[:myinterior_id])
  end
end
