class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.int :amount_owed
      t.int :amount_paid
      t.string :due_date

      t.timestamps
    end
  end
end
