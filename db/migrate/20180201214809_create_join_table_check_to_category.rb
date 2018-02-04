# frozen_string_literal: true

class CreateJoinTableCheckToCategory < ActiveRecord::Migration[5.1]
  def change
    create_join_table :checks, :categories do |t|
      # t.index [:check_id, :category_id]
      # t.index [:category_id, :check_id]
    end
  end
end
