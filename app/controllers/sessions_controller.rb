class SessionsController < ApplicationController

  def new
    @user = User.new  
    render :new  
  end

  def create
    user_params = params.require(:user).permit(:username, 
                                        :password, :password_confirmation, :id)    
    @user = User.confirm(user_params[:username], user_params[:password])
      if @user 
        login(@user)
        redirect_to current_user
      else
         redirect_to "/sign_in"
      end
  end

  def destroy
    logout
    redirect_to root_path
  end

end
