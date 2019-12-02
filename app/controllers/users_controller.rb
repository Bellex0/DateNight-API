class UsersController < ApplicationController
    
      def profile
        render json: current_user
      end
      
  
      def index 
          @users = User.all
          render json: {user: @users} 
      end 
  
      def show 
          user_id = params[:id]
          # if user_id_from_token == user_id.to_i
          if decoded_token == user_id.to_i
            user = User.find(user_id)
            render json: user 
          else
            render json: { go_away: true }, status: :unauthorized
          end
        end 
  
      def create
          user = User.create(user_params)
          if user.valid?
            render json: {token: create_token(user.id), user_id: user.id} 
          else
            render json: {errors: user.errors.full_messages}, status: 422
          end
        end

      def favorites 
      user = User.find(params[:id])
      render json: user.favorites
      end

      def destroy_favorites
        user = User.find(params[:id])
        favorite= Favorite.find(params[:id])
        user.favorite.destroy 
      end

      def favorite_places
        user = User.find(params[:id])
        render json: user.favorite_places
        end

        def events 
          user = User.find(params[:id])
        render json: user.events
        end
  
        def destroy_favorite_places
          user = User.find(params[:id])
          favorite = FavoritePlace.find(params[:id])
          user.favorite.destroy 
        end
    
        def destroy
            token = request.headers["Authorization"]
            if token
                decoded_token = JWT.decode(
                    token,
                    secret,
                    true,
                    { algorithm: "HS256"}
                )
                user = User.find(decoded_token[0]["user_id"])
                user.destroy
          end
        end

       
        private
        def user_params
          params.permit(:username, :password, :name, :image, :location) 
        end
  
        
  

end
