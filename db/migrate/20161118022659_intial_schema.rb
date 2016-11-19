# Setting up databases
# Run rake:db migrate to intialize  
# It creates the schema.db
# @author Carson Wood
class IntialSchema < ActiveRecord::Migration
  def change
  	# Create categories table in db
  	create_table :categories do |t|
  		#has a name field/column and is a string
  		t.string :name
  	end

  	#Create subcategories table in db
  	create_table :subcategories do |t|
  		t.string :name #has a name field/column
  		t.integer :category_id
  	end

  	#Create listings table in db
  	create_table :listings do |t|
  		t.string :title
  		t.text :description
  		t.string :city
  		t.string :state
  		t.string :zipcode
  		t.timestamps 
  	end
  end
end
