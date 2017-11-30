class Basket < ApplicationRecord
  has_many :basket_detail
  has_many :products, through: :basket_details
end
