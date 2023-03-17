class CreateFailureModes < ActiveRecord::Migration[7.0]
  def change
    create_table :failure_modes do |t|
      t.string :name
      t.text :description
      t.string :impact_to
      t.integer :criticality
      t.references :thing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
