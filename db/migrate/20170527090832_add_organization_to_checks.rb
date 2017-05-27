class AddOrganizationToChecks < ActiveRecord::Migration[5.0]
  def change
    add_reference :checks, :organization, foreign_key: true
  end
end
