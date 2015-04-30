class User < ActiveRecord::Base
	has_many :posts
	has_one :profile
	has_and_belongs_to_many :department
end	

class Product < ActiveRecord::Base

end

class Category < ActiveRecord::Base

end

class Post < ActiveRecord::Base
	belongs_to :user
end

class Profile < ActiveRecord::Base
	belongs_to :user
end

class Department < ActiveRecord::Base
	has_and_belongs_to_many :user
end




