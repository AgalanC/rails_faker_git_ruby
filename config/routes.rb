# config/routes.rb
Rails.application.routes.draw do
  # The line below was the original code before updating the route so that the "Products" controller's index action is triggered from a GET request to "/products".
  # get 'products/index'

  # I added the line below; this route maps GET requests to "/products" to the "index" action in the "Products" controller
  get 'products', to: 'products#index'

  # I added the line below, route sets up a way to handle requests to URLs like "/products/1" by invoking the "show" action of the "ProductsController". It also provides URL helper methods like "product_path" and "product_url" to easily generate these URLs in your application.
  get 'products/:id', to: 'products#show', as: 'product'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
