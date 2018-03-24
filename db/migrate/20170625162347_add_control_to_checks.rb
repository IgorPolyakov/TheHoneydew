# frozen_string_literal: true

class AddControlToChecks < ActiveRecord::Migration[5.0]
  def change
    add_column :checks, :control, :boolean
  end
end
