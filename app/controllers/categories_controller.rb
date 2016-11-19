class CategoriesController < ApplicationController
	#The index page of our categories controller
	def index
		@categories = Category.all
		@housing = @categories[0]
		@roommates = @categories[1]
		@forsale = @categories[2]
	end

	def show
		@listings = Listing.where(category_id: params[:id])
	end
end