class SessionsController < ApplicationController
    skip_before_action :require_login, only: [:new, :create, :omniauth]

    def new
        @user = User.new
    end

    def omniauth
        user = User.from_omniauth(auth)
        
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:notice] = 'Invalid username or password.'
            redirect_to '/signin'
        end
    end


    def create
            @user = User.find_by(email: params[:user][:email])
            if @user && @user.authenticate(params[:user][:password])
                session[:user_id] = @user.id
                redirect_to user_path(@user)
            else
                flash[:notice] = 'Invalid username or password.'
                render 'new'
            end
    end   



    def destroy
        reset_session
        redirect_to '/'
    end

    private
    def session_params
        params.require(:session).permit(:user, :password)
    end
     
    def auth
      request.env['omniauth.auth']
    end
end