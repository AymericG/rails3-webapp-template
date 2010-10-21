module ApplicationHelper
	def is_admin?
     !current_user.nil? and current_user.admin?
  end
end
