class RemoveSsnFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :ssn, :integer
  end
end
