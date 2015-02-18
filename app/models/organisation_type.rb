class OrganisationType < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :organisations

end
