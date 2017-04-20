class AddColumnToPeople < ActiveRecord::Migration[5.0]
  def change
  	add_column :people, :middle_name, :string
  end
end
