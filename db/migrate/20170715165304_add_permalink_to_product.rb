class AddPermalinkToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :permalink, :string
    add_index :products, :permalink
  end
  def self.down
    remove_column :products, :permalink
  end
end
