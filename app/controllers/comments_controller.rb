class CommentsController < ApplicationController
  def index 
    comments = Comment.all 
    render json: CommentSerializer.new(comments)
  end 

  def create 
    comment = Comment.new(comment_params)
    if comment.save 
      render json: CommentSerializer.new(comment)
    else  
      render json: { error: "fail"}
    end 

  end 

  private 

  def comment_params 
    params.require(:comment).permit(:text, :user_id)
  end
end
