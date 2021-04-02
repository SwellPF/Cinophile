class SessionsController < ApplicationController

    def new
        @user = User.new
    end


    def create
        if auth
            @user = User.find_or_create_by(email: auth['info']['email']) do |u|
                u.name = auth['info']['name']
                u.image = auth['info']['image']
                u.password = SecureRandom.hex(10)
            end
            if @user.persisted?
                    session[:user_id] = @user.id
                    redirect_to @user
            else
                redirect_to root_path
            end
        else
            @user = User.find_by(email: params[:user][:email])
            if @user && @user.authenticate(params[:user][:password])
                session[:user_id] = @user.id
                redirect_to user_path(@user)
            else
                flash[:notice] = 'Invalid username or password.'
                render 'new'
            end
    end   
     
        render 'application/hello'
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