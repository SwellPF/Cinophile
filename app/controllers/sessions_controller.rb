class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create 
        binding.pry
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

end