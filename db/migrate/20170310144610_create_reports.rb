# frozen_string_literal: true

class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :number
      t.date :deadline
      t.references :inspector, foreign_key: true
      t.string :executive
      t.string :reason
      t.string :result
      t.timestamps
    end
  end
end
