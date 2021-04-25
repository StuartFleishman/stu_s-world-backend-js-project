class GameScoresController < ApplicationController
  
  def index 
    scores = GameScore.all 
    render json: scores.to_json(except: [:created_at, :updated_at] )
  end 


  def create 
    score = GameScore.new(score_params)
    if score.save 
      render json: score.to_json(except: [:created_at, :updated_at] )
    else  
      render json: { error: "fail"}
    end 

  end 

  private 

  def score_params 
    params.require(:game_score).permit(:score, :user_id)
  end


end
