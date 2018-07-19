class HomeController < ApplicationController
  def index
  	if current_user
  		redirect_to applications_path
  	end
  end
end
