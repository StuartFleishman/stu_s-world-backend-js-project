class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :comments 
end
