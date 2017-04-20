class ChangeBossInOrganizationToFirstName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :organizations, :boss, :first_name
  end
end
