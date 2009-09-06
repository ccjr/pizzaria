class OrderItem < ActiveRecord::Base
  validates_presence_of :order_id, :product_id
  belongs_to :order
  belongs_to :product, :class_name => 'Pizza'
  
  def price
    quantity * 5.99
  end
end
