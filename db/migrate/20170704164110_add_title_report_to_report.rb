class AddTitleReportToReport < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :title_report, :string
  end
end
