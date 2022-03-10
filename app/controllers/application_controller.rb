class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :username, :bio, :location, :instrument_list, :genre_list, :photo])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:bio, :location, :instrument_list, :genre_list, :photo])
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
