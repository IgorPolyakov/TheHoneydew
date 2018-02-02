class CreateJoinTableCheckToViolation < ActiveRecord::Migration[5.1]
  def change
    create_join_table :checks, :violations do |t|
      # t.index [:check_id, :violation_id]
      # t.index [:violation_id, :check_id]
    end
  end
end
