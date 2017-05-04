class CreateVisors < ActiveRecord::Migration[5.0]
  def change
    create_table :visors do |t|

      t.timestamps
    end
  end
end
