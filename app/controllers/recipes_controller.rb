class RecipesController < ApplicationController

    def create
        recipes = Recipe.create(recipe_params)
        render json: recipes 
    end 

    def index
        recipes = Recipe.all 
        render json: recipes 
    end 

    def show 
        user = User.find(params[:id])
        recipes = user.recipes 
        render json: recipes 
    end 

    def saved
        recipe = Recipe.create(recipes_params)
        if recipe
            render json:{recipe: recipe}
        else
             render json:{message:"not working"}
        end
    end

    def get_recipes
        user = User.find(params[:id])
        if user
            render json:{recipes: user.recipes}
        else
            render json:{message: "not working"}
        end
    end

    def destroy
        recipe = Recipe.find(params[:id])
        recipe.destroy
    end 

    private 

    def recipes_params
        params.permit(:name, :recipe_id, :user_id, :image)
    end 
end
