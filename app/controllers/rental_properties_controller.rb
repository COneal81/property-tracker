class RentalPropertiesController < ApplicationController

    before_action :authenticate_user!
    before_action :find_rental_property, only: [:show, :edit, :update]
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
        end
    end

    def show

    end

    def edit
    end

    def update
        @rental_property.update(rental_property_params)
        redirect_to rental_property_path(@rental_property)
    end


    private
    
    def rental_property_params
        params.require(:rental_property).permit(:property_name, :property_description, :address, :monthly_rental_amount,
        :deposit_amount, :square_feet, :contract_start_date, :contract_end_date, :img_url, :leased)
    end

    
       
    def find_rental_property
        @rental_property = RentalProperty.find_by(id: params[:id])
    end
end
