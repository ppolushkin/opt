

class SessionsController < ApplicationController

include SessionsHelper

  skip_before_filter :authorize

  def show_login_form
  end

  def log_in
    if authenticate_user(params[:name], params[:password])
      session[:admin] = true
      redirect_to about_us_url, :notice => "Logged in"
    else
      redirect_to login_url, :notice => "Invalid user/password combination"
    end
  end

  def log_out
    session[:admin] = false
    redirect_to about_us_url, :notice => "Logged out"
  end

end
