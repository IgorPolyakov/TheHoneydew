class CreateJoinTableReportToReason < ActiveRecord::Migration[5.1]
  def change
    create_join_table :reports, :reasons do |t|
      # t.index [:report_id, :reason_id]
      # t.index [:reason_id, :report_id]
    end
  end
end
