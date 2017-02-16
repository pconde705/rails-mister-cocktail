# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

ingredient_url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
everything = open(ingredient_url).read
ingredients_list = JSON.parse(everything)

ingredients_hash = ingredients_list["drinks"]
ingredients_names = []
ingredients_hash.each do |key|
  ingredients_names << key["strIngredient1"].to_s
end

ingredients_names.each do |name|
  Ingredient.create(name: name)
end
