module SessionsHelper

  def authenticate_user(name, password)
    admin = Admin.find_by_email(name)
    if admin
      if admin.password.is_password? password
        return true
      end
    end

    false
  end

end
