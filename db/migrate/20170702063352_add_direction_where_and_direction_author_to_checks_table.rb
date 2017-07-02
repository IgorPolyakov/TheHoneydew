class AddDirectionWhereAndDirectionAuthorToChecksTable < ActiveRecord::Migration[5.0]
  def change
    add_column :checks, :direction_author, :string
    add_column :checks, :direction_where, :string
  end
end
