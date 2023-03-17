class AddTypeToThings < ActiveRecord::Migration[7.0]
  def change
    add_column :things, :type, :string
  end
end
