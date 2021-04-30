class PostsController < ApplicationController
  def index   
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:category_id, :title, :article).merge(user_id: current_user.id)
  end
end
