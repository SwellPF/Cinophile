class ApplicationController < ActionController::Base
require 'pry'
helper_method :current_user, :logged_in?, :require_login


private

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def require_login
        unless logged_in?
          redirect_to '/'
        end
    end
end
