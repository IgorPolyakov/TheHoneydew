class AddInspectorToChecks < ActiveRecord::Migration[5.0]
  def change
    add_reference :checks, :inspector, foreign_key: true
  end
end
