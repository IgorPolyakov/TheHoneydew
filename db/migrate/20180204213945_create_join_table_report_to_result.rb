# frozen_string_literal: true

class CreateJoinTableReportToResult < ActiveRecord::Migration[5.1]
  def change
    create_join_table :reports, :results do |t|
      # t.index [:report_id, :result_id]
      # t.index [:result_id, :report_id]
    end
  end
end
