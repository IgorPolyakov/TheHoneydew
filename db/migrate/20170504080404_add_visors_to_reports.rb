class AddVisorsToReports < ActiveRecord::Migration[5.0]
  def change
    add_reference :reports, :visor, foreign_key: true
  end
end
