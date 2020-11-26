require 'open-uri'
require 'json'

puts 'Clearing database...'
Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_doc = open(url).read
ingredients_list = JSON.parse(ingredients_doc)
ingredients_list['drinks'].each do |ingredient|
  new_ingredient = Ingredient.new(name: ingredient['strIngredient1'])
  new_ingredient.save
  puts "#{ingredient['strIngredient1']} added! 🍸"
end

puts '⭐⭐⭐Done!⭐⭐⭐'
