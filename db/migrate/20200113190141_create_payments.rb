class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :amount_owed
      t.integer :amount_paid
      t.string :due_date
      t.integer :rental_property_id

      t.timestamps
    end
  end
end
