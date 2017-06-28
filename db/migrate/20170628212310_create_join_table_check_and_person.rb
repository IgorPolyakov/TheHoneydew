class CreateJoinTableCheckAndPerson < ActiveRecord::Migration[5.0]
  def change
    create_join_table :checks, :people do |t|
      # t.index [:check_id, :person_id]
      # t.index [:person_id, :check_id]
    end
  end
end
