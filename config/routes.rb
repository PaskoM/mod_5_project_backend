Rails.application.routes.draw do
  resources :shoppings
  resources :recipes
  resources :ingredients
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/sign-in", to: "users#sign_in"
  get "/validate", to: "users#validate"
  get "/fridge-items", to: "users#ingredients"
  post "/sign-up", to: "users#sign_up"
  post "/saved", to: "recipes#saved"
  get "/saved-recipes/:id", to: "recipes#get_recipes"
  delete "/delete-recipe/:id", to: "recipes#destroy"
  post "/add-ingredient", to: "ingredients#createNew"
  delete "/delete-ingredient/:id", to: "ingredients#destroy"
  get "/shopping-items/:id", to: "shoppings#get_shoppings"
  post "/add-shopping", to: "shoppings#saved"
  delete "/delete-shoppings/:id", to: "shoppings#destroy"
end
