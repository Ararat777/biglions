class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def mobile_device?
    (request.user_agent =~ /Mobile|webOS/) && (request.user_agent !~ /iPad/)
  end
  helper_method :mobile_device?
end
