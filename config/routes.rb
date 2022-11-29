Rails.application.routes.draw do
resources :restaurant, only: [:index, :show, :destroy]
resources :pizza, only: [:index]
resources :restaurantpizza, only: [:create]
end
