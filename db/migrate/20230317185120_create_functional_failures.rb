class CreateFunctionalFailures < ActiveRecord::Migration[7.0]
  def change
    create_table :functional_failures do |t|
      t.text :description
      t.references :equip_function, null: false, foreign_key: true

      t.timestamps
    end
  end
end
