class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.integer :number
      t.datetime :dead_line
      t.references :inspector, foreign_key: true

      t.timestamps
    end
  end
end
