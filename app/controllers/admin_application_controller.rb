class AdminApplicationController < ActionController::Base
	include Admin::SessionHelper
	layout 'admin_lte_2'

	def check_admin_user
  	 p "========= Current Admin User ========#{current_admin_user.inspect}=========="
     if current_admin_user.blank?
      flash[:alert] = "Your session has been expired,please try login again."
      return redirect_to new_admin_session_path
      end  
    end
end
