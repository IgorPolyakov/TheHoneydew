class AddSupevisorsToChecks < ActiveRecord::Migration[5.0]
  def change
    add_reference :checks, :supervisor, foreign_key: true
  end
end
