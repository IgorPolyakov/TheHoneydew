# frozen_string_literal: true

class RenameDirectionInChecksTableToDirectionStatus < ActiveRecord::Migration[5.0]
  def change
    rename_column :checks, :direction, :direction_status
  end
end
