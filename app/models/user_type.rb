class UserType < ActiveRecord::Base
  attr_accessible :description, :name

  #associations between tables
  has_many :users

  #validation - start
  validates :name, :length => { :minimum => 1 }, :uniqueness => true
  #validation - end
end
