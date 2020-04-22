class Product < ApplicationRecord
  belongs_to :size
  belongs_to :category
  belongs_to :category_type
end
