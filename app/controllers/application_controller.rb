class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    flash[:authorization_error] = "Current user is not authorized to perform that action."
    redirect_to listings_path
  end 
end
