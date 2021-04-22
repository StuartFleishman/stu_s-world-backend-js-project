class GameScoresController < ApplicationController
  
  def index 
    scores = GameScore.all 
    render json: scores.to_json(except: [:created_at, :updated_at] )
  end 


end
