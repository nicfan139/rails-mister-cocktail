require 'net/http'
require 'json'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
uri = URI(url)
response = Net::HTTP.get(uri)
ingredients_lib = JSON.parse(response)
ingredients = ingredients_lib["drinks"]

ingredients.each do |ingredient|
  Ingredient.new(name: ingredient["strIngredient1"])
end
