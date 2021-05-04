class CommentRepliesController < ApplicationController

  def new
    @comment_reply = CommentReply.new
  end
  
  def create
    @post = Post.find(params[:id])
    @comment_reply = @post.comment_replies.build(comment_reply_params)
    @comment_reply.comment_id = params[:comment_id]
    @comment_replies = @post.comment_replies.include(:user).recent
    if @comment_reply.save
      render :index
    end
  end
end

private

def comment_reply_params
  params.require(:comment_reply).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id], comment_id: params[:comment_id])
end
