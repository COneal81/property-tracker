class CreateTentants < ActiveRecord::Migration[6.0]
  def change
    create_table :tentants do |t|
      t.string :name_1
      t.string :name_2
      t.string :name_3
      t.string :address
      t.string :email_1
      t.string :email_2
      t.string :email_3
      t.string :phone_1
      t.string :phone_2
      t.string :phone_3
      t.string :payment_date
      t.integer :deposit_amount_paid
      t.integer :monthly_rental_amount_due
      t.integer :rental_property_id

      t.timestamps
    end
  end
end
