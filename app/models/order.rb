class Order < ActiveRecord::Base
  validates_presence_of :user_id
  belongs_to :user
  has_many :items, :class_name => "OrderItem"

  DELIVERY_METHODS = ["Pick up", "Home Delivery"]
  
  def add_product_to_order(product)
    if products.include?(product)
      item = self.item_for_product(product)
      item.quantity = item.quantity + 1
    else
      items.build(:product_id => product.id, :quantity => 1)
    end
  end
  
  def remove_product_from_order(product)
    item = self.item_for_product(product)
    if item.quantity == 1
      items.delete(item)
    else
      item.quantity = item.quantity - 1
    end
  end
  
  def products
    items.collect(&:product)
  end
  
  def item_for_product(product)
    begin 
      items.select{|i| i.product == product}.first
    rescue
      nil
    end
  end
  
  def total
    items.collect(&:price).sum
  end
end
