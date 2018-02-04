# frozen_string_literal: true

class CreateJoinTableCheckToResponseMeasure < ActiveRecord::Migration[5.1]
  def change
    create_join_table :checks, :response_measures do |t|
      # t.index [:check_id, :response_measure_id]
      # t.index [:response_measure_id, :check_id]
    end
  end
end
