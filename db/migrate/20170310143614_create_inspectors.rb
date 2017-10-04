# frozen_string_literal: true

class CreateInspectors < ActiveRecord::Migration[5.0]
  def change
    create_table :inspectors do |t|
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
