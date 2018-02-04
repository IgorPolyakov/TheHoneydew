# frozen_string_literal: true

class CreateResponseMeasures < ActiveRecord::Migration[5.1]
  def change
    create_table :response_measures do |t|
      t.string :name

      t.timestamps
    end
  end
end
