class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :title
  		t.date :date
  		t.text :posts
  		t.integer :user_id
  	end
  end
end
