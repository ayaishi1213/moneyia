class PostsController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create]

  def index   
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end 
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:category_id, :title, :article).merge(user_id: current_user.id)
  end
end
