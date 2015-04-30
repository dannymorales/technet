class CreateCustomersTable < ActiveRecord::Migration
  def change

  	create_table :customers do |t|
  		t.string :name
  		t.string :address
  	end
  end
end
