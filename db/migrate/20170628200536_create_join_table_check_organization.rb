class CreateJoinTableCheckOrganization < ActiveRecord::Migration[5.0]
  def change
    create_join_table :checks, :organizations do |t|
      # t.index [:check_id, :organization_id]
      # t.index [:organization_id, :check_id]
    end
  end
end
