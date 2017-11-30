class AddBasketRefToBasketDetails < ActiveRecord::Migration[5.1]
  def change
    add_reference :basket_details, :basket, foreign_key: true
  end
end
