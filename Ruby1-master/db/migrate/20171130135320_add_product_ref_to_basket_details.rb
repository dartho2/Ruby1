class AddProductRefToBasketDetails < ActiveRecord::Migration[5.1]
  def change
    add_reference :basket_details, :product, foreign_key: true
  end
end
