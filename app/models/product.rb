class Product < ApplicationRecord
  belongs_to :size
  belongs_to :category
  belongs_to :category_type
  has_many_attached :images
end
