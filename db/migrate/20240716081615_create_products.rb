class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.decimal :price, precision: 10, scale: 2, null: false
      t.integer :stock_quantity, null: false
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
