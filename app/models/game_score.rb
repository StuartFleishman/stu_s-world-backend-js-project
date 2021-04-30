class GameScore < ApplicationRecord
  belongs_to :user 


  def self.top_scores
    order(score: :desc)
  end


end
