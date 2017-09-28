# frozen_string_literal: true

class AddPersonToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_reference :organizations, :person, foreign_key: true
  end
end
