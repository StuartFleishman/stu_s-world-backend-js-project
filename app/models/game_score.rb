class GameScore < ApplicationRecord
  belongs_to :user 


  def self.top_scores
    order(score: :asc)
  end


end
