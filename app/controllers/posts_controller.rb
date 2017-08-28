class PostsController < ApplicationController
  before_action :set_memo, only: [:show, :edit, :update, :destroy]
  
  def main
  end
  
  def index
    @posts = Post.all
  end

  def show
    @comment = Comment.new
    @comments = @post.comments
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_index_path
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    @post.update_attributes(post_params)
    if @post.save
      redirect_to posts_index_path
    else
      render :edit
    end
  end
  
  def destroy
    @post.destroy
    redirect_to root_path
  end
  
  private
  def set_memo
    @post = Post.find(params[:id])
  end
    
   def post_params
      params.require(:post).permit(:title,:content,:user_id)
   end
end
