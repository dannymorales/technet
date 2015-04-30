class CreateCategoriesTable < ActiveRecord::Migration
  def change
  	create_table :categories do |t|
  		t.string :cname
  		t.string :ctype
  		t.string :cfunction
  	end
  end
end
