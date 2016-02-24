class Membership < ActiveRecord::Base 
  membership belongs_to :user
  membership belongs_to :group
end
