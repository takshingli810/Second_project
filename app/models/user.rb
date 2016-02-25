class User < ActiveRecord::Base
  has_many :memberships
  has_many :groups, through: :memberships


  validates :username, uniqueness: true

  # validates confirmation of password
  has_secure_password

  def self.confirm(username, password)
    # used in session controller
    @user = User.find_by_username(username)
    @user.try(:authenticate, password)
  end

end
