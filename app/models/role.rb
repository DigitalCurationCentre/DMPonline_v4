class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles
  
  belongs_to :resource, :polymorphic => true

  #validation - start
  validates :name, :length => { :minimum => 1 }, :uniqueness => true
  #validation - end
   
  scopify
  attr_accessible :name, :role_in_plans, :resource_id, :resource_type
end
