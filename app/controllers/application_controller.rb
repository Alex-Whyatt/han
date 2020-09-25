class ApplicationController < ActionController::Base
	def is_admin?
      # check if user is a admin
      # if not admin then redirect to where ever you want 
      redirect_to root_path unless current_user && current_user.admin? 
    end
end
