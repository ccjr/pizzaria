class Product < ActiveRecord::Base
  CATEGORIES = ["Pizza", "Drink", "Other"]
  validates :category, :price, :name, :presence => true
end
