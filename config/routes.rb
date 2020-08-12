Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :show ]
  resources :pizzas, only: [ :index, :show ]
  resources :restaurant_pizzas, only: [ :new, :create ]
end
