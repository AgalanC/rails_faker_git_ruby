# app/controllers/products_controller.rb
class ProductsController < ApplicationController
  def index
    # Load all "Products" into an instance variable.
    @products = Product.all
  end
end
