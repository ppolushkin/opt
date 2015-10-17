

class SessionsRestController < RestApplicationController

  include SessionsHelper

  skip_before_filter :authorize

  #GET api/login
  def is_log_in
    if session[:admin]
      render json: {
                 :message => 'success'
             },
             status: 200
    else
      render json: {
                 :message => 'not authorized'
             },
             status: 401
    end
  end

  #POST api/login
  def log_in
    if authenticate_user(params[:name], params[:password])
      session[:admin] = true
      render json: {
                 :message => 'success'
             },
             status: 200
    else
      session[:admin] = false
      render json: {
                 :message => 'not authorized'
             },
             status: 401
    end
  end

  #POST api/logout
  def log_out
    session[:admin] = false
    render json: {
               :message => 'logged out'
           },
           status: 200
  end

end
