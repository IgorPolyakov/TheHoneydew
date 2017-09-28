# frozen_string_literal: true

class AddColumnInOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :middle_name, :string
    add_column :organizations, :last_name, :string
    add_column :organizations, :position, :string
  end
end
