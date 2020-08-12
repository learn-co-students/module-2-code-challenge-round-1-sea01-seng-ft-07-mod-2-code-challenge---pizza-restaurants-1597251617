class CreateRestaurantPizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :restaurant_id
      t.integer :pizza_id
      t.integer :price

      t.timestamps
    end
  end
end
