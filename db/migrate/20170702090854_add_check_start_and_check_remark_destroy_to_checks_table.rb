class AddCheckStartAndCheckRemarkDestroyToChecksTable < ActiveRecord::Migration[5.0]
  def change
    add_column :checks, :check_start, :date
    add_column :checks, :check_remark_destroy, :date
  end
end
