class RestaurantPizza < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant

    validates_uniqueness_of :pizza_id, scope: :restaurant_id
end
