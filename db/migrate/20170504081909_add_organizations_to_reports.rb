class AddOrganizationsToReports < ActiveRecord::Migration[5.0]
  def change
    add_reference :reports, :organization, foreign_key: true
  end
end
