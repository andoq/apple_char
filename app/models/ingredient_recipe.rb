class IngredientRecipe < ActiveRecord::Base

  belongs_to :ingredient, inverse_of: :ingredient_recipes
  belongs_to :recipe, inverse_of: :ingredient_recipes

end
