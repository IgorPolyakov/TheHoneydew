# frozen_string_literal: true

class RemoveColumnFirstNameAndLastNameAndMiddleNameFromOrganization < ActiveRecord::Migration[5.1]
  def change
    remove_column :organizations, :first_name, :string
    remove_column :organizations, :last_name, :string
    remove_column :organizations, :middle_name, :string
  end
end
