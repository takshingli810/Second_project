class Group < ActiveRecord::Base
  has_many :picture
  has_many :user, through: :membership
end
