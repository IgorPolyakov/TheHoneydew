# frozen_string_literal: true

class CreateDirectionStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :direction_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
