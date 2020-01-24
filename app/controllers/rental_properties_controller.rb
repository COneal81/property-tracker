class RentalPropertiesController < ApplicationController

    before_action :authenticate_user!
    before_action :find_rental_property, only: [:show, :edit, :update, :destroy]
    # before_action :redirect_if_not_admin?, only: [:new, :create]

    def index
        @rental_properties = RentalProperty.all
    end 

    def new 
        @rental_property = RentalProperty.new
    end

    def create
        @rental_property = RentalProperty.new(rental_property_params)
        if @rental_property.save
            redirect_to rental_property_path(@rental_property)
        # Add else statement and a redirect once this is working
        # Add Flash message
        end
    end

    def show
        @rental_property = RentalProperty.find(params[:id])
    end

    def edit
    end

    def update
        @rental_property.update(rental_property_params)
        redirect_to rental_property_path(@rental_property)
    end

    def destroy
        if @rental_property
            @rental_property.destroy
            #Display flash message here
            redirect_to rental_properties_path
        else
             #Display flash message here
            redirect_to rental_properties_path
        end
    end

    private
    
    def rental_property_params
        params.require(:rental_property).permit(:property_name, :property_description, :address, :monthly_rental_amount,
        :deposit_amount, :square_feet, :contract_start_date, :contract_end_date, :img_url, :leased)
    end

    
       
    def find_rental_property
        @rental_property = RentalProperty.find(params[:id])
    end
end
