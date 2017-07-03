class CreateChecks < ActiveRecord::Migration[5.0]
  def change
    create_table :checks do |t|
      t.integer :amount
      t.string :checks_number
      t.date :deadline
      t.string :reason
      t.string :category
      t.string :violation
      t.string :response_measure
      t.string :direction
      t.string :case_number
      t.integer :number_of_volumes
      t.boolean :for_office

      t.timestamps
    end
  end
end
