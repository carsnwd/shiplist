class RemoveZipCodeFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :zipcode, :string
  end
end
