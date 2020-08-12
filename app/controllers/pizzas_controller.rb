class PizzasController < ApplicationController
  before_action :draw_pizza, only: [ :show ]

  def index
    @pizzas = Pizza.all
  end

  def show
  end

  private

  def draw_pizza
    @pizza = Pizza.includes(:restaurants).find(params[:id])
  end
end
