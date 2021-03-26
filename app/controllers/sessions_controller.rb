class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create 
        
        @user = User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
          #  raise params.inspect
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            raise inspect.params
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

end