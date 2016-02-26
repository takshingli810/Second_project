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
#            Prefix Verb   URI Pattern                               Controller#Action
#              root GET    /                                         users#index
#       user_groups GET    /users/:user_id/groups(.:format)          groups#index
#                   POST   /users/:user_id/groups(.:format)          groups#create
#    new_user_group GET    /users/:user_id/groups/new(.:format)      groups#new
#   edit_user_group GET    /users/:user_id/groups/:id/edit(.:format) groups#edit
#        user_group GET    /users/:user_id/groups/:id(.:format)      groups#show
#                   PATCH  /users/:user_id/groups/:id(.:format)      groups#update
#                   PUT    /users/:user_id/groups/:id(.:format)      groups#update
#                   DELETE /users/:user_id/groups/:id(.:format)      groups#destroy
#             users GET    /users(.:format)                          users#index
#                   POST   /users(.:format)                          users#create
#          new_user GET    /users/new(.:format)                      users#new
#         edit_user GET    /users/:id/edit(.:format)                 users#edit
#              user GET    /users/:id(.:format)                      users#show
#                   PATCH  /users/:id(.:format)                      users#update
#                   PUT    /users/:id(.:format)                      users#update
#                   DELETE /users/:id(.:format)                      users#destroy
#  membership_index GET    /users/:user_id/groups(.:format)          memberships#index
# membership_create POST   /groups/:group_id/users(.:format)         memberships#create
#           sign_in GET    /sign_in(.:format)                        sessions#new
#          sessions POST   /sessions(.:format)                       sessions#create
#                   DELETE /sessions(.:format)                       sessions#destroy
