class RestaurantsController < ApplicationController

    def index
        restaurants = Restaurant.all
        render json: restaurants, status: 200
      end
    
      def show
        if restaurant
          render json: restaurant, status: 200
        else
          render json: { message: "Restaurant not found" }
        end
      end

    def create
        user = User.find(params[:user_id])
        restaurant = Restaurant.create(restaurant_params)
        if restaurant.valid?
          user.restaurants << restaurant
          (render json: restaurant, status: 201)
        else
          render json: { message: "Restaurant cannot be added to favorites" }
        end
      end

      def destroy 
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
      end

      private
        def restaurant_params
          params.permit(:name, :image, :category, :location, :distance, :price, :rating, :website) 
        end
  


end

