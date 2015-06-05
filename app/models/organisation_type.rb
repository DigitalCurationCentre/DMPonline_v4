class OrganisationType < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :organisations

  #validation - start
  validates :name, :length => { :minimum => 1 }
  #validation - end

end
