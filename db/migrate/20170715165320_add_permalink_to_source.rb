class AddPermalinkToSource < ActiveRecord::Migration
  def self.up
    add_column :sources, :permalink, :string
    add_index :sources, :permalink
  end
  def self.down
    remove_column :sources, :permalink
  end
end
