class AddPaymentFieldsToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :payment_message, :string
    add_column :orders, :payment_authorization, :string
  end

  def self.down
    remove_column :orders, :payment_authorization
    remove_column :orders, :payment_message
  end
end
