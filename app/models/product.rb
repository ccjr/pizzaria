class Product < ActiveRecord::Base
  has_attached_file :image,
                    :styles => { :medium => "300x300>",
                                 :thumb => "100x100>" }
                                 
  CATEGORIES = ["Pizza", "Drink", "Other"]
end
