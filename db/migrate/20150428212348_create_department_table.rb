class CreateDepartmentTable < ActiveRecord::Migration
  def change
  	create_table :departments do |t|
  		t.string :name
  		t.string :function
  	end
  end
end
