class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def admin_required
		redirect_to(root_path, :alert => "You are not an admin user.") unless is_admin?
	end

	def is_admin?
     !current_user.nil? and current_user.admin?
  end
end
