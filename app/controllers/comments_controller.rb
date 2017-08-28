class CommentsController < ApplicationController
    
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    
    redirect_to "/posts/show/#{@comment.post_id}"
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to "/posts/show/#{params[:post_id]}"
  end
  
  private
  def comment_params
        params.require(:comment).permit(:content,:post_id)
  end
end
