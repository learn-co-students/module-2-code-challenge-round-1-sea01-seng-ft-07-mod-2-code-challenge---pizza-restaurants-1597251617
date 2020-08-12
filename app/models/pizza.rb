class Pizza < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas

  def average_price
    price_arr = self.restaurant_pizzas.map(&:price)

    return 0.0 if price_arr.empty?

    (price_arr.sum.to_f / price_arr.length).round(2)
  end
end
