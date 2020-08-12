class Restaurant < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :pizzas, through: :restaurant_pizzas

  def address_gmap_link
    addr_array = self.address.chars
    addr_array.map! do |char|
      if char == ' '
        char = '%20'
      elsif char == ','
        char = '%2C'
      else
        char
      end
    end

    "https://www.google.com/maps/search/?api=1&#{addr_array.join('')}"
  end

  def average_pizza_price
    price_arr = self.restaurant_pizzas.map(&:price)

    (price_arr.sum.to_f / price_arr.length).round(2)
  end
end
