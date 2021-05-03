class CommentsController < ApplicationController
  def create
    @comment = Comment.create(coment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
