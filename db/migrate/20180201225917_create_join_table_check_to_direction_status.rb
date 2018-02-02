class CreateJoinTableCheckToDirectionStatus < ActiveRecord::Migration[5.1]
  def change
    create_join_table :checks, :direction_statuses do |t|
      # t.index [:check_id, :direction_status_id]
      # t.index [:direction_status_id, :check_id]
    end
  end
end
