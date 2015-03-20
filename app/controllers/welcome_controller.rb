class WelcomeController < ApplicationController

  def get_name; end

  def set_name
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to messages_path
    else
      render :get_name
    end
  end

end
