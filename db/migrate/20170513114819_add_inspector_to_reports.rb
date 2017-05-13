class AddInspectorToReports < ActiveRecord::Migration[5.0]
  def change
    add_reference :reports, :inspector, foreign_key: true
  end
end
