class AddContactToListings < ActiveRecord::Migration
  def change
    add_column :listings, :contact, :string
  end
end
