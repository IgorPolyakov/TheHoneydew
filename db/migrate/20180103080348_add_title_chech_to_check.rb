class AddTitleChechToCheck < ActiveRecord::Migration[5.1]
  def change
    add_column :checks, :title_check, :string
  end
end
