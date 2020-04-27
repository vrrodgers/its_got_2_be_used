class Category < ApplicationRecord
    has_many :products
    has_many :categoryTypes
    has_many :sizes

end
