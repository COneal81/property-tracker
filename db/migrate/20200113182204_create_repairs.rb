class CreateRepairs < ActiveRecord::Migration[6.0]
  def change
    create_table :repairs do |t|
      t.boolean :repair_needed
      t.text :description
      t.boolean :repair_completed

      t.timestamps
    end
  end
end
