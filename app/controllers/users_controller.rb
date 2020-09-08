class UsersController < ApplicationController

    def sign_in
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            
            render json: { username: user.username, token: generate_token(id: user.id), user:user, id: user.id }
        else
            render json: { error: "Invalid username or password" }
        end 
    end
    
    def validate
    if get_user
      render json: { username: get_user.username, token: generate_token(id: get_user.id), user: get_user, id: get_user.id }
    else
      render json: { error: "You are not authorized" }
    end
  end

  def sign_up
    user = User.create(username: params[:username], email: params[:email], password: params[:password])
    if user.valid? 
        render json: { user: user, token: generate_token(id: user.id)}
    else 
        render json: {error: user.errors.full_messages}
    end
 end 

 def show 
  user = User.find(params[:id])
  render json: user
 end 

  def ingredients
    if get_user
      render json: { ingredients: get_user.ingredients }
    else
      render json: { error: "You are not authorized" }
    end
  end

end
