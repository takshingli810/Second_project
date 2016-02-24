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
    # TODO: ask for `password` and `password_confirmation` from user
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
  
  def user_params
    # TODO: don't require `password_digest`, only `password` and `password_confirmation`
    params.require(:user)
    .permit(:username, 
            :email, 
            :password,
            :password_confirmation)
  end

end
