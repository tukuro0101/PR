class CreateTaxTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :tax_types do |t|
      t.string :type_name, null: false

      t.timestamps
    end
  end
end
