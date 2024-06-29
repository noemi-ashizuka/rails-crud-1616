Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # HTTP_VERB "/path", to: "controller#action", as: :prefix (prefix_path)

  # CRUD Read All
  get "/restaurants", to: "restaurants#index", as: :restaurants # restaurants_path

  # CRUD Create
  # a place with a form
  get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  # a place for us to create the restaurant
  post "/restaurants", to: "restaurants#create"

  # CRUD Read One
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant

  # CRUD UPdate
  # form to update
  get "/restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant

  # place to send the new info
  patch "restaurants/:id", to: "restaurants#update"

  # CRUD Delete

  delete "restaurants/:id", to: "restaurants#destroy"

  
end
