class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :comments
  has_many :comments 
end
