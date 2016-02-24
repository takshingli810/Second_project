class UsersController < ApplicationController
  
  def index
    render :index 
    #renders this after destroy profile
    # and destroy session
  end

  def new
    @user = User.new # this creates new user 
  end

  def create #creating user 
    @user = User.create(user_params)
    login(@user) # using login method from session_help
    redirect_to user_path(@user) # show method to user profile
  end

  def show
    # redirect to this after logging in and also signing up
    @user = User.find(params[:id])
  end

  def edit
    # grabbing data for update method
    @user = User.find(params[:id]) 
  end

  def update
    # update user profile
    @user = User.find(params[:id]) 
    @user.update_attributes(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def destroy 
    #destroys user from database
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path # back to root 
  end

  private
  
  def user_params 
  #strong params for creating user
    params.require(:user)
    .permit(:username, 
            :email, 
            :password,
            :password_confirmation)
  end

end
