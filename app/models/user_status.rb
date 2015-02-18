class UserStatus < ActiveRecord::Base
  attr_accessible :description, :name

  #associations between tables
  has_many :users
end
