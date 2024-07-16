class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :street, null: false
      t.string :city, null: false
      t.references :province, null: false, foreign_key: true
      t.string :postal_code, null: false

      t.timestamps
    end
  end
end
