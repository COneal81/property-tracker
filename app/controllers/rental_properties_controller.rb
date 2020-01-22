class RentalPropertiesController < ApplicationController

    before_action :authenticate_user!
    before_action :redirect_if_not_admin?, only: [:new, :create]

    def index
    end 
# Full crud actions
end
