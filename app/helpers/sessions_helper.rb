module SessionsHelper

  def login(user)
    session[:user_id] = user.user_id
    @current_user = user
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    if current_user == nil
      redirect_to "/sign_in"
    end
  end

  def logout
    @current_user = session[:user[id]] = nil
  end

end
