class ChangeColumnNameInInspectorToFirstName < ActiveRecord::Migration[5.0]
  def change
    rename_column :inspectors, :name, :first_name
  end
end
