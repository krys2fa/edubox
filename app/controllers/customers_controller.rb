class CustomersController < ApplicationController
    def index
        @customers = User.where("users.admin = ? and users.agent = ? ", false, false)
    end
end