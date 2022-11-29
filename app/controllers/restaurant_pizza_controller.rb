class RestaurantPizzaController < ApplicationController

    def create
        restaurant = Restaurant.create(restaurant_params)
        if restaurant
            render json: restaurant, status: :created
        else
            render json: {error: "validation errors"}
        end

        private

        def restaurant_params
        params.permit(:price, :pizza_id, :restaurant_id)
        end
    end
end
