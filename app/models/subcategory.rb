class Subcategory < ActiveRecord::Base
	#Has a many to one relationship with category
	belongs_to :category 
end