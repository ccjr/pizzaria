class OrderItem < ActiveRecord::Base
  validates_presence_of :order_id, :product_id
  belongs_to :order
  belongs_to :product
end
