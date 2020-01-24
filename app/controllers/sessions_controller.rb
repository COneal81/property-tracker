class SessionsController < ApplicationController

    def new 
    end

    def create
        #  byebug
        @user = User.find_by(email: params[:session][:email])
        if @user && @user.authenticate(params[:session][:password])   
            session[:user_id] = @user.id
            #place flash message welcoming user
            redirect_to user_path(@user)
        else
            #place flash notice here (reference has_secure_password lab)
            render :new
        end
    end

    # def destroy
    #     user = User.find(params[:id])
    #     user.destroy
    #     redirect_to new_session_path
    # end
end
