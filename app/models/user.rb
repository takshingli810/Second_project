class User < ActiveRecord::Base
  has_many :membership
  has_many :group, through: :membership

  validates :username, uniqueness: true

  # validates confirmation of password
  has_secure_password

  def self.confirm(username, password)
    # used in session controller
    @user = User.find_by_username(username)
    @user.try(:authenticate, password)
  end

end
