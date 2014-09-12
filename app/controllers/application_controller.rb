class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #
  # redirect registered users to a profile page
  # of to the admin dashboard if the user is an administrator
  #
  # def after_sign_in_path_for(resource)
  #   resource.role == 'admin' ? admin_dashboard_path : user_path(resource)
  # end
  #
  # def authenticate_admin_user!
  #   raise SecurityError unless current_user.try(:role) == 'admin'
  # end
  #
  # rescue_from SecurityError do |exception|
  #   redirect_to root_path
  # end

end
