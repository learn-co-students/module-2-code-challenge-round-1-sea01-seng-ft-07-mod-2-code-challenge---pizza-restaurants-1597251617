class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas

    #solely for seed data creation (ensuring seeding multiple times doesn't duplicate pizzas)
    validates :name, presence: true
    validates :ingredients, presence: true
    validates_uniqueness_of :name
end