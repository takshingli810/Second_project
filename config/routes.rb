Rails.application.routes.draw do
  
  # index to root
  root to: "users#index"  
  
  #creating all the user routes for cruding 
  resources :users

  # sign in route for user session
  get "/sign_in", to: "sessions#new"

  # create session
  post "/sessions", to: "sessions#create"

end
