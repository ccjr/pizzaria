class RenamePizzasToProducts < ActiveRecord::Migration
  def self.up
    rename_table :pizzas, :products
  end

  def self.down
    rename_table :products, :pizzas
  end
end
