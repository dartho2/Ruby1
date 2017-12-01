class Product < ApplicationRecord
  has_many :basket_detail
  has_many :baskets, through: :basket_details
end
