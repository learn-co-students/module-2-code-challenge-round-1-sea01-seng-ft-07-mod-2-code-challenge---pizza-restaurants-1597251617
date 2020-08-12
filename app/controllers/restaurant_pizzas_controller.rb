class RestaurantPizzasController < ApplicationController

    def new
        @restaurant_pizza = RestaurantPizza.new
        @pizzas = Pizza.all
        @restaurant = Restaurant.all
    end

    def create
        @restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)
        if @restaurant_pizza.save
            redirect_to restaurant_path(@restaurant_pizza.restaurant_id)
        else
            render :new
        end
    end

    private
    def restaurant_pizza_params
        params.require(:pizza, :restaurant).permit(:price)
    end
end
