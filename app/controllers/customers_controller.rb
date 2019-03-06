class CustomersController < ApplicationController
    before_action :set_customer, only: [:show, :edit, :update, :destroy] 

    def index
        @customers = User.where("users.admin = ? and users.agent = ? ", false, false)
    end

    

    def show
    end


    private
      def set_customer
        @customer = User.find(params[:id])
      end

end