# coding: utf-8

class RestApplicationController < ActionController::Base
  before_filter :authorize

  protect_from_forgery

  protected

  def authorize
    unless session[:admin]
      render json: {
                 :message => 'not authorized'
             },
             status: 401
    end
  end
end
