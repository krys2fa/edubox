class AgentsController < ApplicationController
    def index
        @agents = User.where(agent: true)
        
    end

end