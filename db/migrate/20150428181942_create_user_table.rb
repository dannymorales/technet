class CreateUserTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :fname
  		t.string :lname
  		t.string :email
  		t.string :address
  		t.string :city
  		t.string :state
  		t.integer :zipcode
  		t.integer :ssn
  		t.date :dob	  		
  	end
  end
end
