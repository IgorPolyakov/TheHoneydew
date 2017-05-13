class CreateCheckPositions < ActiveRecord::Migration[5.0]
  def change
    create_table :check_positions do |t|
      t.integer :check_id
      t.integer :position_id
      t.timestamps
    end
    add_index :check_positions, :check_id
    add_index :check_positions, :position_id
  end
end
