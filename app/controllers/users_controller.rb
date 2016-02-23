class UsersController < ApplicationController
  
  # index page
  def index
    render :index
  end

  # this creates new user 
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user)
    .permit(:username, 
            :password_digest,  
            :email)
  @user = User.create(user_params)
  end


end
