class AddInspectorsToVisors < ActiveRecord::Migration[5.0]
  def change
    add_reference :visors, :inspector, foreign_key: true
  end
end
