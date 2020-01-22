class Remove < ActiveRecord::Migration[6.0]
  def change
    remove_column :payments, :rental_property_id, :integer
  end
end
