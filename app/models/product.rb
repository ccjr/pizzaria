class Product < ActiveRecord::Base
  CATEGORIES = ["Pizza", "Drink", "Other"]  
  validates :category, :price, :name, :presence => true
  
  has_attached_file :image,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" }
    
end
