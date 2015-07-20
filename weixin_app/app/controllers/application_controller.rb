class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token, if: :xml_or_json_request?
  before_action :authenticate_user!

  def xml_or_json_request?
  	request.format.xml? || request.format.json?
  end

  protected

  def after_sign_in_path_for(resource)
  	attendences_path
  end
end