

class SessionsRestController < RestApplicationController

  include SessionsHelper

  skip_before_filter :authorize

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

  def log_out
    session[:admin] = false
    render json: {
               :message => 'logged out'
           },
           status: 200
  end

end
