class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :external_id
      t.string :name
      t.text :resume
      t.text :description
      t.integer :price
      t.integer :price_old
      t.date :modified
      t.string :pixel
      t.string :external_url
      t.string :fabricante
      t.string :delivery_time
      t.string :image_large
      t.string :image_short
      t.string :image_medium
      t.integer :shipping_price
      t.belongs_to :category, index: true


      t.timestamps
    end
  end
end
