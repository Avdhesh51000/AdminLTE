module Admin::SessionHelper
	
  def admin_log_in 
    session[:admin_token] = @admin_user.admin_token
  end

  def current_admin_user
    @current_admin_user = AdminUser.find_by(admin_token: session[:admin_token])
    if @current_admin_user.present?
      return @current_admin_user
    else
      session[:admin_token].delete if session[:admin_token]
      return nil
    end 
  end

  def admin_log_out
    session.delete(:admin_token) if session.present?
    @admin_current_user = nil if @admin_current_user.present?
    redirect_to new_admin_session_path
  end

end
