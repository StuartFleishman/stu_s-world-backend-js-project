class UsersController < ApplicationController

  def index 
    users = User.all 
    render json: UserSerializer.new(users)
  end 

  def create 
    user = User.new(user_params)
    if user.save 
      render json: UserSerializer.new(user)
    else  
      render json: { error: "fail"}
    end 

  end 

  private 

  def user_params 
    params.require(:user).permit(:name, :game_scores)
  end


end
