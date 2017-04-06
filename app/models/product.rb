class Product < ApplicationRecord
  belongs_to :shop
  has_one :product_image
end
