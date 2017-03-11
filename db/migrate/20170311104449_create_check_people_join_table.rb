class CreateCheckPeopleJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :people, :checks do |t|
      # t.index [:person_id, :check_id]
      # t.index [:check_id, :person_id]
    end
  end
end
