class CreateRentalProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_properties do |t|
      t.string :property_name
      t.string :address
      t.string :price
      t.integer :square_feet
      t.boolean :leased
      t.string :deposit_amount

      t.timestamps
    end
  end
end
