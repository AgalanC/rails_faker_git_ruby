# config/routes.rb
Rails.application.routes.draw do
  # The line below was the original code before updating the route so that the "Products" controller's index action is triggered from a GET request to "/products".
  # get 'products/index'

  # I added the line below; this route maps GET requests to "/products" to the "index" action in the "Products" controller
  get 'products', to: 'products#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
