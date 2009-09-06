class Order < ActiveRecord::Base
  validates_presence_of :user_id
  belongs_to :user
  has_many :items, :class_name => "OrderItem"
  
  def products
    items.collect(&:product)
  end
  
  def total
    items.collect(&:price).sum
  end
end
