class ShoppingsController < ApplicationController

    def create
        shoppings = Shopping.create(shoppings_params)
        render json: shoppings 
    end 

    def index
        shoppings = Shopping.all 
        render json: shoppings
    end 

    def show 
        user = User.find(params[:id])
        shoppings = user.shoppings 
        render json: shoppings 
    end 

    def saved
        shopping = Shopping.create(shoppings_params)
        if shopping
            render json:{shopping: shopping}
        else
            render json:{message:"not working"}
        end
    end

    def get_shoppings
        user = User.find(params[:id])
        if user
            render json:{shoppings: user.shoppings}
        else
            render json:{message: "not working"}
        end
    end

    def destroy
        shopping = Shopping.find(params[:id])
        shopping.destroy
    end 

    private 

    def shoppings_params
        params.require(:shopping).permit(:name, :user_id, :api_id)
    end 

end
