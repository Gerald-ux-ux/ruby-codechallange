class RestaurantController < ApplicationController
    def index
        restaurant = Restaurant.all
        render json: restaurant, status: :ok
    end
    def show
        restaurant= Restaurant.find(params[:id])
        if restaurant
            render json: restaurant, status: :ok
        else
            render json: {error: "Restaurant not found"}, status: :not_found
        end
    end
    def destroy
        restaurant = Restaurant.find_by(id:params[:id])
        if restaurant
          restaurant.destroy
          head :no_content
          else

          end
    end
end
