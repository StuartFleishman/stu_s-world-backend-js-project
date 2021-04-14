class UsersController < ApplicationController

  def index 
    users = User.all 
    render json: users.to_json(except: [:created_at, :updated_at], include: {comments: {only: [:text] }} )
  end 

  def create 
    user = User.new(user_params)
  end 

  private 

  def user_params 
    params.require(:user).permit(:name)
  end


end
