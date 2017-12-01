class CreateAllegros < ActiveRecord::Migration[5.1]
  def change
    create_table :allegros do |t|
      t.string :fv
      t.string :name
      t.string :product
      t.integer :cost

      t.timestamps
    end
  end
end
