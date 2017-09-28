# frozen_string_literal: true

class AddLastNameToInspector < ActiveRecord::Migration[5.0]
  def change
    add_column :inspectors, :last_name, :string
  end
end
