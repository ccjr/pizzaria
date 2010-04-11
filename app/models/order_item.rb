class OrderItem < ActiveRecord::Base
  validates :product_id, :order_id, :quantity, :presence => true
  
  belongs_to :order
  belongs_to :product
  
  def price
    quantity * product.price
  end
end
