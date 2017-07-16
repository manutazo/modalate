class Source < ApplicationRecord
  has_many :products
  has_permalink :name
end
