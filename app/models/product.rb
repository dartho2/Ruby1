class Product < ApplicationRecord
  has_many :basket_details
  has_many :baskets, through: :basket_details
end
