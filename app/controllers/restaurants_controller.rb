class RestaurantsController < ApplicationController
  before_action :draw_restaurant, only: [ :show ]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  private

  def draw_restaurant
    @restaurant = Restaurant.includes(:pizzas).find(params[:id])
  end
end
