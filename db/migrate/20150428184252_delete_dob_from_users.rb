class DeleteDobFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :dob, :string
  end
end
