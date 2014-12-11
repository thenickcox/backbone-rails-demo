class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :vary_headers

  def after_sign_up_path_for(resource)
    user_albums_path(resource)
  end

  def after_sign_in_path_for(resource)
    user_albums_path(resource)
  end

  private

  def vary_headers
    response.headers["Vary"]= "Accept"
  end
end
