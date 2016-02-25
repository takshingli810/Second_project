Rails.application.routes.draw do
  
  # index to root
  root to: "users#index"  
  
  #creating all the user routes for cruding 
  resources :users do
   resources :groups
  end

  # sign in route for user session
  get "/sign_in", to: "sessions#new"

  # create session
  post "/sessions", to: "sessions#create"

  # delete session
  delete '/sessions', to: "sessions#destroy"


end
