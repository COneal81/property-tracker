class AddColumnToRentalProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :rental_properties, :img_url, :string
  end
end
