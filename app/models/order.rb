class Order < ActiveRecord::Base
  validates_presence_of :user_id
  belongs_to :user
  has_many :items, :class_name => "OrderItem"
end
