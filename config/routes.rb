Rails.application.routes.draw do
  
  # index to root
  root to: "users#index"  
  
  #creating all the user routes for cruding 
  resources :users do
   resources :groups
  end

  post "/group/:id/picture", to: "pictures#addPictureToGroup", as: "pictures"

  # patch "/users/:user_id/groups", to: "groups#addPictureToGroup", as: "patch_user_group"

  

  get "/users/:user_id/groups", to: "memberships#index", as:"membership_index"
  post "/groups/:group_id/users", to: "memberships#create", as: "membership_create"

  # sign in route for user session
  get "/sign_in", to: "sessions#new"

  # create session
  post "/sessions", to: "sessions#create"

  # delete session
  delete '/sessions', to: "sessions#destroy"


end
