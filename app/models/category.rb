class Category < ApplicationRecord
    has_many :products
    has_many :category_types
    has_many :sizes

end
