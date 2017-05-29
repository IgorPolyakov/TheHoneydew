class AddColumnToChecks < ActiveRecord::Migration[5.0]
  def change
  	 add_column :checks, :executive, :string
  end
end
