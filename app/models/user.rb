class User < ApplicationRecord
  has_many :comments
  has_many :game_scores
end
