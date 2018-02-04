# frozen_string_literal: true

class AddExecutiveToChecks < ActiveRecord::Migration[5.0]
  def change
    add_column :checks, :executive, :string
  end
end
