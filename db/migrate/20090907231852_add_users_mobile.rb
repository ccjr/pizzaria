class AddUsersMobile < ActiveRecord::Migration
  def self.up
    add_column :users, :mobile, :string
  end

  def self.down
    remove_column :users, :mobile
  end
end
