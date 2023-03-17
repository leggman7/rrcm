class CreateEquipFunctions < ActiveRecord::Migration[7.0]
  def change
    create_table :equip_functions do |t|
      t.string :name
      t.string :tracked_description
      t.integer :tracked_value
      t.references :thing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
