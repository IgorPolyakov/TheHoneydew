class AddLatLngToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :latitude_sign_in, :real, :null=>false, :default=>0
    add_column :users, :longitude_sign_in, :real, :null=>false, :default=>0
  end
end
