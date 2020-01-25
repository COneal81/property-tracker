class RepairsController < ApplicationController

    before_action :authenticate_user!

    def index
        @repairs = Repair.all
    end


    def new 
        @repair = Repair.new
    end
    
    def create
        @repair = Repair.create(repair_params)
        
            #Flash Message here
            redirect_to repair_path(@repair)
    end

    def show 
        @repair = Repair.find_by(id: params[:id])
    end


    def edit
        
    end

    def update

    end

    def destroy

    end

    private

    def repair_params
        params.require(:repair).permit(:repair_needed, :repair_description, :repair_cost, :repair_completed)
    end
    
    # def find_repair
    #     @repair = Repair.find_by(id: params[:id])
    # end
end
