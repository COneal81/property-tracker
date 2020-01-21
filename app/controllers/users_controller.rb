class UsersController < ApplicationController
    
    def new 
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        find_user
    end

    private

    def find_user
        @user = User.find_by(params[:id])
    end

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
