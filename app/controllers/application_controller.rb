class ApplicationController < ActionController::Base
  protect_from_forgery


  #Omniauth/user sign in controls
  #Defines the helper method current_user to be able to be used in the views
  private
	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user

end
