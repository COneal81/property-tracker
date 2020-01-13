class CreateTentants < ActiveRecord::Migration[6.0]
  def change
    create_table :tentants do |t|
      t.string :name
      t.string :name_2
      t.string :name_3
      t.string :address
      t.string :email
      t.string :phone_1
      t.string :phone_2
      t.string :phone_3
      t.string :payment_date
      t.string :contract_start_date
      t.string :contract_end_date
      t.string :deposit_amount
      t.string :monthly_rentral_amount_due

      t.timestamps
    end
  end
end
