class UserRestaurantsController < ApplicationController

    def index
        user_restaurants = User_restaurant.all
        render json: user_restaurants, status: 200
    end


    def show 
        user_restaurant = User_restaurant.find(params[:id])
          render json: user_restaurant, status: 200
      end

      def create
        user_restaurant = User_restaurant.create(user_restaurant_params)
        render json: user_restaurant, status: 200
    end

    def user_restaurant_params
        params.permit(:user_id, :restaurant_id)
      end

end
