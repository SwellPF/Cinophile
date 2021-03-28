class UsersController < ApplicationController

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
        #raise params.inspect
        @user = User.new(user_params)
        if @user.save
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

private

    def user_params
        params.require(:user).permit(:name, :email, :password, :admin)
    end
end
