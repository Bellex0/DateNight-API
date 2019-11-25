class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :ingredients, :recipe_api_id
end
