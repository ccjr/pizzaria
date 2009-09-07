class AddOrderDeliveryMethodAndAddress < ActiveRecord::Migration
  def self.up
    add_column :orders, :delivery_method, :string
    add_column :orders, :address, :string
  end

  def self.down
    remove_column :orders, :address
    remove_column :orders, :delivery_method
  end
end
