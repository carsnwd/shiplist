class SubcategoriesController < ApplicationController
	def find_by_category
		category = Category.find(params[:category_id])
		subcategories = category.subcategories.find_all
		render json: { subcategories: subcategories}
	end

	def show
		@listings = Listing.where(subcategory_id: params[:id])
	end
end