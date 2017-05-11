class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.integer :inspector_id
      t.integer :role_id

      t.timestamps
    end
    add_index :positions, [:inspector_id, :role_id]
  end
end
