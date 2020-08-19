class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password
  has_many :user_palettes
end
