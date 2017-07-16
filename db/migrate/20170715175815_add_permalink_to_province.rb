class AddPermalinkToProvince < ActiveRecord::Migration[5.0]
  def self.up
    add_column :provinces, :permalink, :string
    add_index :provinces, :permalink
  end
  def self.down
    remove_column :provinces, :permalink
  end
end
