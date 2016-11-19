class Category < ActiveRecord::Base
	#Has a one to many relationship with subcategory
	has_many :subcategories
	has_many :listings
end