require 'bcrypt'

#Owner = venok
#Read-only clone
class Admin < ActiveRecord::Base
  include BCrypt

  validates :email, :presence => true

  def password
    if password_hash
      @password ||= Password.new(password_hash)
    else
      nil
    end
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
