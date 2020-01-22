class AddPaymentIdToRentalProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :rental_properties, :payment_id, :integer
  end
end
