class ApplicationController < ActionController::Base
  protect_from_forgery
    def require_login
      unless logged_in?
        flash[:error] = "You must be logged in to view this page"
        redirect_to new_login_url
      end
    end

    def current_user
      if session[:user_id]
        @current_user = User.find(session[:user_id])
      else
        @current_user = nil
      end
    end
  helper_method :current_user
end
