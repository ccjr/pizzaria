class OrderItem < ActiveRecord::Base
  validates_presence_of :product_id
  belongs_to :order
  belongs_to :product
  
  def price
    quantity * product.price
  end
end
