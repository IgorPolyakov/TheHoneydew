class AddColumnInReports < ActiveRecord::Migration[5.0]
  def change
  	add_column :reports, :reason, :string
  	add_column :reports, :result, :string
  end
end
