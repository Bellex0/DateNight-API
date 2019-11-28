class FavoritesController < ApplicationController

    def index 
        favorites = Favorite.all
        render json: favorites
    end 

    def create
        user = User.find(params[:user_id])
        favorite_recipe = Favorite.create(favorite_params)
        if favorite_recipe.valid?
            user.favorites << favorite_recipe
          (render json: favorite_recipe, include: [:title, :image, :recipe_api_id, :user_id], status: 201)
        else
          render json: { message: "Recipe cannot be added" }
        end
      end

      def destroy 
        user = User.find(params[:user_id])
        favorite = Favorite.find(params[:id])
        favorite.destroy
      end
    
      private
    
      def favorite_params
        
        params.permit(:title, :image, :recipe_api_id, :user_id)
      end
    
      def user_params
        params.permit(:user_id)
      end
    

end
