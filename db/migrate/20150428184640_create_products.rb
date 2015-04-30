class CreateProducts < ActiveRecord::Migration
  def change
  	create_table :products do |t|
  		t.string :name
  		t.string :type
  		t.integer :size
  		t.decimal :value
  		t.string :category
  		
  	end
  end
end
