class ChangeNameInOrganizationToCompanyName < ActiveRecord::Migration[5.0]
  def change
    rename_column :organizations, :name, :company_name
  end
end
