# frozen_string_literal: true

class RemoveReasonResultFromReport < ActiveRecord::Migration[5.1]
  def change
    remove_column :reports, :reason, :string
    remove_column :reports, :result, :string
  end
end
