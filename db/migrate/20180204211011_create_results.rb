# frozen_string_literal: true

class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :name

      t.timestamps
    end
  end
end
