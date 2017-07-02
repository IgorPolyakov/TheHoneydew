class RenameDeadLineInChecksTableToCheckFinish < ActiveRecord::Migration[5.0]
  def change
    rename_column :checks, :deadline, :check_finish
  end
end
