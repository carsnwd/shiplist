class ListingsController < ApplicationController
  #Defines a new listing with a user
  before_action :authenticate_user!
  def new
    @listing = current_user.listings.build
  end

  #Creates a new listing with the particular listing info (title, name, etc)
  def create
    @listing = current_user.listings.build(listing_params)
    @listing.save
    redirect_to @listing
  end

  #Displays a listing
  def show
    @listing = Listing.find(params[:id])
  end

  #Takes in id and searches the listings with search function
  def search
    @listings = Listing.where(id: params[:id])
    @listings = Listing.search(params[:search])
  end

  #Delete a listing
  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    flash[:success] = "Listing deleted"
    redirect_to root_url
  end

  #Params for listing defined
  private
  def listing_params
    params.require(:listing).permit(:title, :description, :contact, :category_id, :subcategory_id)
  end
end
