class UsersController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:new, :create]
    def new
        @user = User.new
    end

    def index
        if current_user
            @users = User.all
        else
            redirect_to '/'
        end
    end
    
    
    
    def show
        @user = User.find_by(id: params[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end

    def edit
        @user = User.find_by(id: params[:id])
    end

    def update
        @user = User.find_by(id: params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render 'edit'
        end
    end

    def destroy
        User.find(params[:id]).destroy
        redirect_to users_path
      end
private

    def user_params
        params.require(:user).permit(:name, :email, :password, :admin)
    end
end
