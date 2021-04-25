class CommentSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user 
  attributes :text, :user_id 
end
