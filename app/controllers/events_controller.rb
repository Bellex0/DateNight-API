class EventsController < ApplicationController

    def index
        events = Event.all
        render json: events, status: 200
      end
    
      # def show
      #   if event
      #     render json: event, status: 200
      #   else
      #     render json: { message: "No such event exists" }
      #   end
      # end

    def create
      user = User.find(params[:user_id])
        event = Event.create(event_params)
        if event.valid?
          user.events << event
          render json: event
        else
          render json: {errors: event.errors.full_messages}
        end
      end


      def update 
        # user = User.find(params[:user_id])
        # byebug
        event = Event.find(params[:id])
        event.update(event_params)
            render json: event
        end 

        def destroy
            event = Event.find(params[:id])
            event.destroy
        end

        private
      
  def event_params
    params.permit(:date, :time, :location, :content, :user_id)
  end


end
