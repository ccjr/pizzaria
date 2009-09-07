class AddProductCategoryId < ActiveRecord::Migration
  def self.up
    add_column :products, :category, :string
    add_column :products, :price, :decimal
  end

  def self.down
    remove_column :products, :price
    remove_column :products, :category
  end
end
