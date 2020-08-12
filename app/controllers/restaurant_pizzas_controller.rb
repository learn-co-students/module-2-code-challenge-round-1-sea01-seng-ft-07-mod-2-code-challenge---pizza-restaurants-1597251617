class RestaurantPizzasController < ApplicationController
  def new
  end

  def create
    @restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)

    if @restaurant_pizza.save
      # success
      flash[:message] = 'Successfully added your pizza to the menu!'
      redirect_to restaurant_path(restaurant_pizza_params[:restaurant_id])
    else
      # failure, error handling
      flash[:error_messages] = @restaurant_pizza.errors.full_messages
      redirect_to new_restaurant_pizza_path
    end
  end

  private
  
  def restaurant_pizza_params
    params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
  end
end
