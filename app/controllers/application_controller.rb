class ApplicationController < ActionController::Base
	rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found
	def is_admin?
      # check if user is a admin
      # if not admin then redirect to where ever you want 
      redirect_to root_path unless current_user && current_user.admin? 
    end
end
