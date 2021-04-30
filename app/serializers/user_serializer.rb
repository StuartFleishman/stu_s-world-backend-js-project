class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :game_scores, :comments
  has_many :comments 
  has_many :game_scores
end
