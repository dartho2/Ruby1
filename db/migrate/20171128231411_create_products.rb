class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :product_id
      t.integer :cost

      t.timestamps
    end
  end
end
