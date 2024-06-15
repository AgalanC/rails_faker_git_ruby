# app/models/category.rb
class Category < ApplicationRecord
  # Defines the association with the "Product" model.
  has_many :products

  # Added a validation for the presence of "name".
  validates :name, presence: true
end
