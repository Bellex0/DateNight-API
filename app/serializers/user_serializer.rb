class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :name, :location, :image, :favorites, :favorite_places
end
