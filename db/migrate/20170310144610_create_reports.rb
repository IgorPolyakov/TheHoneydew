class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :number
      t.date :deadline
      t.references :inspector, foreign_key: true
      t.string :executive
      t.timestamps
    end
  end
end
