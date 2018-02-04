# frozen_string_literal: true

class CreateViolations < ActiveRecord::Migration[5.1]
  def change
    create_table :violations do |t|
      t.string :name

      t.timestamps
    end
  end
end
