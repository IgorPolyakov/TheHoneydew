class AddControllToCheck < ActiveRecord::Migration[5.0]
  def change
    add_column :checks, :controll, :boolean
  end
end
