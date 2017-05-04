class AddSupervisorsToReports < ActiveRecord::Migration[5.0]
  def change
    add_reference :reports, :supervisor, foreign_key: true
  end
end
