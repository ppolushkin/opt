# coding: utf-8

class RestApplicationController < ActionController::Base

  before_filter :authorize
  after_filter :set_csrf_cookie_for_ng

  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  protected

  def verified_request?
    val = valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
    if !val
      logger.warn 'CSRF attack detected'
    end
    super || val
  end

  def authorize
    unless session[:admin] && verified_request?
      render json: {
                 :message => 'not authorized'
             },
             status: 401
    end
  end
end
