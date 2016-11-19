class Listing < ActiveRecord::Base
	#Has a many to one relationship with cat and subcat
	belongs_to :category
	belongs_to :subcategory

	def self.search(params)
		listings = Listing.where(category_id: params[:category].to_i)
		if params[:search].present?
			listings = listings.where("title like ? or description like ?", params[:search], params[:search])
		end
		listings
	end
end