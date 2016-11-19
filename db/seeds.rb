# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or first_or_created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#If it is not made yet, make the category housing
housing_category = Category.where(name: 'housing').first_or_create(name: 'housing')
roommates_category = Category.where(name: 'roommates').first_or_create(name: 'roommates')
forsale_category = Category.where(name: 'for sale').first_or_create(name: 'for sale')

Subcategory.where(name: 'housing', category_id: housing_category.id).first_or_create(name: 'housing', category_id: housing_category.id)
Subcategory.where(name: 'rooms', category_id: housing_category.id).first_or_create(name: 'rooms', category_id: housing_category.id)
Subcategory.where(name: 'on-campus', category_id: roommates_category.id).first_or_create(name: 'on-campus', category_id: roommates_category.id)
Subcategory.where(name: 'off-campus', category_id: roommates_category.id).first_or_create(name: 'off-campus', category_id: roommates_category.id)
Subcategory.where(name: 'textbooks', category_id: forsale_category.id).first_or_create(name: 'textbooks', category_id: forsale_category.id)
Subcategory.where(name: 'other', category_id: forsale_category.id).first_or_create(name: 'other', category_id: forsale_category.id)