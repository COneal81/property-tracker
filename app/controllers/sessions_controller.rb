class SessionsController < ApplicationController

    def new 
    end

    def create
        @user = User.find_by(email: params[:session][:email].downcase)
        if @user && @user.authenticate(params[:session][:password])   
            session[:user_id] = @user.id
            redirect_to rental_properties_path
        else
            #place flash notice here (reference has_secure_password lab)
            render :new
        end
    end

    def destroy

    end
end
