class CommentsController < ApplicationController
  def index 
    comments = Comment.all 
    render json: comments.to_json(except: [:created_at, :updated_at])
  end 

  def create 
    comment = Comment.new(comment_params)
    if comment.save 
      render json: comment.to_json(except: [:created_at, :updated_at])
    else  
      render json: { error: "fail"}
    end 

  end 

  private 

  def comment_params 
    params.require(:comment).permit(:text, :user_id)
  end
end
