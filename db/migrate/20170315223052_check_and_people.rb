class CheckAndPeople < ActiveRecord::Migration[5.0]
    def change
        create_table :checks_people, id: false do |t|
            t.belongs_to :check, index: true
            t.belongs_to :person, index: true
        end
    end
end
