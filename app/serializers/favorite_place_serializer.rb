class FavoritePlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :location, :url, :price, :rating, :user_id
end
