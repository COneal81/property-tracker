class CreateRepairs < ActiveRecord::Migration[6.0]
  def change
    create_table :repairs do |t|
      t.boolean :repair_needed, default: false 
      t.text :repair_description
      t.string :repair_cost
      t.boolean :repair_completed, default: false 
      t.integer :rental_property_id

      t.timestamps
    end
  end
end
