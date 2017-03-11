class CreateChecks < ActiveRecord::Migration[5.0]
  def change
    create_table :checks do |t|
      t.integer :count
      t.string :name
      t.datetime :deadline
      t.string :object
      t.string :category
      t.integer :tom
      t.string :dsp

      t.timestamps
    end
  end
end
