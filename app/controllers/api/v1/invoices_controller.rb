class Api::V1::InvoicesController < ApplicationController
    before_action :set_invoice, only:[:show, :update, :destroy]

    def index
        @invoices = Invoice.all
        render json: @invoices
    end 

    def show
        render json: @invoice
    end 

    def create
        @invoice = Invoice.new(invoice_params)

        if @invoice.save
            render json: @invoice, status: :create, location: @invoice
        else 
            render json: @invoice.erros, status: :unprocessable_entity
        end 
    end 

    def update
        if @invoice.update(invoice_params)
          render json: @invoice
        else
          render json: @invoice.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /invoices/1
      def destroy
        @invoice.destroy
      end
    
      private
        def set_invoice
          @invoice = Invoice.find(params[:id])
        end
    
        # Only allow a trusted parameter "white list" through.
        def invoice_params
          params.require(:invoice).permit(:qty, :description, :project_id, :unitprice, :cost)
        end
    end

