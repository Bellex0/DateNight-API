class UsersController < ApplicationController
    
      def profile
        byebug
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

      


        # def edit
        #     token = request.headers["Authorization"]
        #     if token
        #         decoded_token = JWT.decode(
        #             token,
        #             secret,
        #             true,
        #             { algorithm: "HS256"}
        #         )
        #         user = User.find(decoded_token[0]["user_id"])
        #         username = user.username == user_params[:username] ? user.username : user_params[:username]
        #         name= user.name == user_params[:name] ? user.name : user_params[:name]
        #         location= user.location == user_params[:location] ? user.location : user_params[:location]
        #         image = user.image == user_params[:image] ? user.image : user_params[:image]
        #         password = user.password == user_params[:password] ? user.password : user_params[:password]
        #         user.update(username: username, name: name, location: location, image:image, password:password )
        #         end
        #         render json: {
        #             user: {
        #                 id: user.id,
        #                 username: user.username,
        #                 name: user.name,
        #                 location: user.location,
        #                 image: user.image,
        #                 password: user.password
        #             },
        #             token: token
        #         }
        #   end
        # end
    
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
