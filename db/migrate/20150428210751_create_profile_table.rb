class CreateProfileTable < ActiveRecord::Migration
  def change

  	create_table :profile do |t|
  		t.string :membership
  		t.string :billing
  		t.string :plan
  		t.string :privileges
  		t.integer :user_id
  	end
  end
end
