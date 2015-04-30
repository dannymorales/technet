class CreateJoinTable < ActiveRecord::Migration
  def change

  	create_join_table :users, :departments, table_name: 
  	:categorization

  end
end
