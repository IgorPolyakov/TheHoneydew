class AddInspectorsToSupervisors < ActiveRecord::Migration[5.0]
  def change
    add_reference :supervisors, :inspector, foreign_key: true
  end
end
