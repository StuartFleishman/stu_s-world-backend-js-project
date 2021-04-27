class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :comments 
  has_many :game_scores
end
