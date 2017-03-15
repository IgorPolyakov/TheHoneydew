class CheckAndPeople < ActiveRecord::Migration[5.0]
    def change
        create_table 'checks_people', id: false do |t|
            t.column :check_id, :integer
            t.column :person_id, :integer
        end
    end
end
