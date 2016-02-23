class SessionsController < ApplicationController

  def new
    @user = User.new  
    render :new  
  end

  def create
    user_params = params.require(:user).permit(:username, 
                                        :password_digest)    
    @user = User.confirm(user_params)
      if @user 
        login(@user)
        redirect_to "/users/#{@user.id}"
      end
  end

  def destroy
    
  end
end
