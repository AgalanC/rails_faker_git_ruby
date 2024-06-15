=begin

Validations must go inside the `product.rb` file because this file defines the `Product` model, which represents the blueprint for the product data structure in the application. By placing validations within the model file, we ensure that the integrity and consistency of the data are maintained at the database level, irrespective of where the data is being created or modified within the application. This centralized approach to data validation helps prevent invalid data from being saved, ensuring that all instances of the `Product` model adhere to the specified requirements. This practice also promotes cleaner, more maintainable code by encapsulating the validation logic within the model itself, making it easier to manage and understand.

=end
# app/models/product.rb
class Product < ApplicationRecord
  # Define the association with the "Category" model.
  belongs_to :category

  validates :title, presence: true
  validates :price, presence: true
  validates :stock_quantity, presence: true
end
