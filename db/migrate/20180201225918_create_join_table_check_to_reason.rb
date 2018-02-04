# frozen_string_literal: true

class CreateJoinTableCheckToReason < ActiveRecord::Migration[5.1]
  def change
    create_join_table :checks, :reasons do |t|
      # t.index [:check_id, :reason_id]
      # t.index [:reason_id, :check_id]
    end
  end
end
