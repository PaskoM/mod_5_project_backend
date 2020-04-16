class AddRecipesIdToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :recipe_id, :integer
  end
end
