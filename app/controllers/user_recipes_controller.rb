class UserRecipesController < ApplicationController

    def index
        user_recipes = User_recipe.all
        render json: user_recipes, status: 200
    end

    
    def create
        user_recipe = User_recipe.create(user_recipe_params)
        render json: user_recipe, status: 200
    end

    def show 
            user_recipe = User_recipe.find(params[:id])
              render json: user_recipe, status: 200
          end


    private
  
    def user_recipe_params
      params.permit(:user_id, :recipe_id)
    end


    

end
