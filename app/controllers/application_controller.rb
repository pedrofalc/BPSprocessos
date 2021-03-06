class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || selections_path
  end


  protect_from_forgery with: :exception
end
