class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.decimal :subtotal, precision: 10, scale: 2, null: false
      t.decimal :gst, precision: 10, scale: 2, null: false
      t.decimal :hst, precision: 10, scale: 2, null: false
      t.decimal :total_price, precision: 10, scale: 2, null: false
      t.string :status, null: false

      t.timestamps
    end
  end
end
