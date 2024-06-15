# app/controllers/products_controller.rb

=begin

*** NOTE *** - Code BEFORE Part 2: Step 9

class ProductsController < ApplicationController
  # index action
  def index
    # Load all "Products" into an instance variable.
    @products = Product.all
  end

  # show action - Displays the details of a single "product". When a user requests a product by its ID (e.g., /products/1), this action retrieves the product with the specified ID from the database and makes it available to the view.
  def show
    @product = Product.find(params[:id])
  end
end

=end





# *** NOTE *** - Code AFTER Part 2: Step 9

class ProductsController < ApplicationController
  # index action
  def index
    # Load all "Products" along with their associated "Categories" into an instance variable.
    @products = Product.includes(:category).all
  end

  # show action - Displays the details of a single "product". When a user requests a product by its ID (e.g., /products/1), this action retrieves the product with the specified ID from the database and makes it available to the view.
  def show
    # Find a product by its ID and load it into an instance variable.
    @product = Product.find(params[:id])
  end
end



=begin

*** NOTES ***
Retrieving the Product:
1. "params[:id]": This is a hash that contains the parameters of the request. "params[:id]" extracts the "id" parameter from the URL. For example, in the URL "/products/1" - "params[:id]" would be "1".
2. "Product.find(params[:id])": This method searches the "products" table for a product with the ID that matches "params[:id]". If a product with the given ID exists, it returns that product. If no such product is found, it raises an "ActiveRecord::RecordNotFound" exception, which can be handled to show a 404 error or a custom error message.



Instance Variable:
1. "@product": The product retrieved by "Product.find(params[:id])" is assigned to the instance variable "@product". Instance variables in Rails controllers are accessible in the corresponding view templates. In this case, the "@product" instance variable will be used in the "app/views/products/show.html.erb" view to display the product's details.

=end
