# frozen_string_literal: true

class AddColumnToInspectors < ActiveRecord::Migration[5.0]
  def change
    add_column :inspectors, :middle_name, :string
  end
end
