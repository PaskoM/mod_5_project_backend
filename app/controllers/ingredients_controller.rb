class IngredientsController < ApplicationController

    def index 
        ingredients = Ingredient.all 
        render json: ingredients 
    end 

    def create
        ingredient = Ingredient.create(ingredient_params)
        render json: ingredient
    end 

    def show 
        user = User.find(params[:id])
        ingredients = user.ingredients 
        render json: ingredients
    end 

    def destroy
        ingredient = Ingredient.find(params[:id])
        ingredient.destroy
    end 

    def createNew
        ingredient = Ingredient.create(ingredient_params)
        if ingredient 
            render json: {ingredients: ingredient} 
        else 
            render json:{message: "not working"}
        end 
    end 

    private 
    
    def ingredient_params
        params.require(:ingredient).permit(:name, :user_id)
    end 
end
