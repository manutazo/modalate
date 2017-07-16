class Product < ApplicationRecord
  has_permalink :name
  belongs_to :category
  belongs_to :source


end
