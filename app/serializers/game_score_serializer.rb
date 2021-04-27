class GameScoreSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user 
  attributes :score, :user_id 
end
