class Order < ActiveRecord::Base
  DELIVERY_METHODS = ["Pick up", "Home Delivery"]
  validates :user_id, :presence => true

  belongs_to :user
  has_many :items, :class_name => "OrderItem"
  
  def increment_product(product)
    find_or_add(product).increment(:quantity)
  end
  
  def decrement_product(product)
    item = find_or_add(product)
    item.quantity > 1 ? item.decrement(:quantity) : items.delete(item)
  end

  def find_or_add(product)
    item = item_for_product(product) || items.build(:quantity => 0, :product_id => product.id)    
  end
  
  def item_for_product(product)
    items.select{|i| i.product == product}.first
  end
  
  def total
    items.collect(&:price).sum
  end
end
