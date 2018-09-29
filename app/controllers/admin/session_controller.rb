class Admin::SessionController < AdminApplicationController
	layout false #To remove the layout of Admin LTE
	
	def new
		@admin_user = AdminUser.new
	end

    #Method For Creating the Admin User Session
	def create
		@admin_user = AdminUser.find_by(email: params[:admin][:email])
		if @admin_user && @admin_user.authenticate(params[:admin][:password])
		   admin_log_in	
           flash[:success] = "Login successfully."
           redirect_to admin_dashboard_index_path
        else
           flash[:error] = "Invalid Email/Password Combination."
           redirect_to home_index_path
	    end
	end
    
    #Method for Destroying the Current Admin User Session
    def destroy
		admin_log_out
		flash[:success] = "Logout successfully."
	end

    #Method for 
	def forgot_password
		
	end
end
