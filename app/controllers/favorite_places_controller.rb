class FavoritePlacesController < ApplicationController
    def index 
        favorites = FavoritePlace.all
        render json: favorites
    end 

    def create
        user = User.find(params[:user_id])
        favorite_place = FavoritePlace.create(favorite_params)
        if favorite_place.valid?
            user.favorite_places << favorite_place
          (render json: favorite_place, include: [:name, :image, :location, :url, :price, :rating, :user_id], status: 201)
        else
          render json: { message: "Restaurant cannot be added" }
        end
      end

      def destroy 
        user = User.find(params[:user_id])
        favorite = FavoritePlace.find(params[:id])
        favorite.destroy
      end
    
      private
    
      def favorite_params
        
        params.permit(:name, :image, :location, :url, :price, :rating, :user_id)
      end
    
      def user_params
        params.permit(:user_id)
      end

end
