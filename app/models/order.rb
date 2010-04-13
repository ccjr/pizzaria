class Order < ActiveRecord::Base
  DELIVERY_METHODS = ["Pick up", "Home Delivery"]
  validates :user_id, :presence => true

  belongs_to :user
  has_many :items, :class_name => "OrderItem"
    
  def total
    items.collect(&:price).sum
  end
end
