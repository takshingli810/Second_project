class User < ActiveRecord::Base

  validates :username, uniqueness: true

  # validates confirmation of password
  has_secure_password

  def self.confirm(username, password)
    @user = User.find_by_username(username)
   
    @user.try(:authenticate, password)
  end

end
