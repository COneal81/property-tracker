class UsersController < ApplicationController
    
    def new 
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        # byebug
        if @user.save
            # session[:user_id] = user.id
            #place a flash message saying that the user sucessfully signed up
            redirect_to user_path(@user) 
        else
            #place flash message as to why they were not signed up
            render :new
        end
    end

    def show
        @user = User.find_by(id: session[:user_id])
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
