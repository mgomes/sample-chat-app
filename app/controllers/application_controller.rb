class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def require_name
    unless session[:name].present?
      redirect_to get_name_path
    end
  end

end
