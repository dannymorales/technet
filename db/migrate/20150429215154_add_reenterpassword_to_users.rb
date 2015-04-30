class AddReenterpasswordToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :repassword, :string
  end
end
