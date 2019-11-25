class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :category, :location, :distance, :price, :rating, :website
end
