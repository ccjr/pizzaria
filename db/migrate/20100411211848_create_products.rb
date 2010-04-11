class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :tip
      t.string :category
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
