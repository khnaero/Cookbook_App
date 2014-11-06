class Cookbook

	def initialize(title)
		@title = title
		@recipes = []
	end

	attr_accessor :title

	attr_reader :recipes

	def add_recipe(recipe_object)
		@recipes << recipe_object
	end
end

class Recipe
	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	attr_accessor :title

	attr_accessor :ingredients

	attr_accessor :steps
end

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])

# puts mex_cuisine.title 
# puts burrito.title
# p burrito.ingredients 
# p burrito.steps

# mex_cuisine.title = "Mexican Recipes"
# puts mex_cuisine.title

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

# p burrito.title
# p burrito.ingredients 


# mex_cuisine.recipes
mex_cuisine.add_recipe(burrito)
p mex_cuisine.recipes