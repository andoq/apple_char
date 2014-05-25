class CreateIngredientRecipes < ActiveRecord::Migration
  def change
    create_table :ingredient_recipes do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.string :amount
      t.string :preparation

      t.timestamps
    end
  end
end
