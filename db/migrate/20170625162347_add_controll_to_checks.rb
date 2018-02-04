# frozen_string_literal: true

class AddControllToChecks < ActiveRecord::Migration[5.0]
  def change
    add_column :checks, :controll, :boolean
  end
end
