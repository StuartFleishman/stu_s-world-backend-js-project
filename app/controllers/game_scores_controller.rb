class GameScoresController < ApplicationController
  
  def index 
    scores = GameScore.all 
    render json: GameScoreSerializer.new(scores)
  end 


  def create 
    score = GameScore.new(score_params)
    if score.save 
      render json: GameScoreSerializer.new(score)
    else  
      render json: { error: "fail"}
    end 

  end 

  def top_scores
    top_scores = GameScore.top_scores.limit(5)
    render json: GameScoreSerializer.new(top_scores)
  end 

  private 

  def score_params 
    params.require(:game_score).permit(:score, :user_id)
  end


end
