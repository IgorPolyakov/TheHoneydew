# frozen_string_literal: true

class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :boss

      t.timestamps
    end
  end
end
