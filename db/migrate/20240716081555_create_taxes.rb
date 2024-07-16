class CreateTaxes < ActiveRecord::Migration[6.1]
  def change
    create_table :taxes do |t|
      t.references :province, null: false, foreign_key: true
      t.references :tax_type, null: false, foreign_key: true
      t.decimal :rate, precision: 5, scale: 2, null: false

      t.timestamps
    end
  end
end
