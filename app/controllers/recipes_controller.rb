class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes, status: 200
      end
    
      def show
        if recipe 
          render json: recipe, status: 200
        else
          render json: { message: "Recipe not found" }
        end
      end

    def create
        user = User.find(params[:user_id])
        recipe = recipe.create(recipe_params)
        if recipe.valid?
          user.recipes << recipe
          (render json: recipe, include: [:name, :image, :ingredients, :recipe_api_id], status: 201)
        else
          render json: { message: "Recipe cannot be added to favorites" }
        end
      end

  def destroy 
    recipe = Recipe.find(params[:id])
    recipe.destroy
  end

  private 
  def recipe_params
    params.permit(:name, :image, :ingredients, :recipe_api_id)
  end



end
