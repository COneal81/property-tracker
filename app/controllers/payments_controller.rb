class PaymentsController < ApplicationController

    def index
        @payments = Payment.all
    end


    def new 
        @payment = Payment.new
    end
    
    def create
        @payment = Payment.create(payment_params)
        
            #Flash Message here
            redirect_to payment_path(@payment)
    end

    def show 
        @payment = Payment.find_by(id: params[:id])
    end

    private

    def payment_params
        params.require(:payment).permit(:amount_owed, :amount_paid, :due_date)
    end

       
end
