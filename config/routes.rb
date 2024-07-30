Rails.application.routes.draw do
  # get 'restaurants/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # # Lire tous les restaurants
  # get "restaurants", to: "restaurants#index", as: :restaurants

  #  # Créer un nouveau restaurant
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"

  #  # Lire un restaurant spécifique (cette route doit être après la route `new`)
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # # Mettre à jour un restaurant
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id", to: "restaurants#update"

  # # Supprimer un restaurant
  # delete "restaurants/:id", to: "restaurants#destroy"

  # Defines the root path route ("/")
  # root "posts#index"
  resources :restaurants
end
