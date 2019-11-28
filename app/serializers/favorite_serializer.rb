class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :recipe_api_id, :user_id
end
