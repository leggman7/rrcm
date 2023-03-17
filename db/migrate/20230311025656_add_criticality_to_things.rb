class AddCriticalityToThings < ActiveRecord::Migration[7.0]
  def change
    add_column :things, :criticality, :integer
  end
end
