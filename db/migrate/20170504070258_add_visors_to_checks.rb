class AddVisorsToChecks < ActiveRecord::Migration[5.0]
  def change
    add_reference :checks, :visor, foreign_key: true
  end
end
