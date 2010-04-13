class OrderItem < ActiveRecord::Base
  validates :product_id, :order_id, :quantity, :presence => true
  
  belongs_to :order
  belongs_to :product

  delegate :name, :price, :to => :product
  
  def total
    quantity * price
  end
end
