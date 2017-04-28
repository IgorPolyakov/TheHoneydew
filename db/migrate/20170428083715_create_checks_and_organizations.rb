class CreateChecksAndOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :checks_and_organizations, id: false do |t|
    	t.belongs_to :check, index: true
        t.belongs_to :organization, index: true
    end
  end
end
