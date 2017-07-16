class Category < ApplicationRecord
  has_many :books
  has_permalink :name
end
