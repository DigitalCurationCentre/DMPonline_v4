class Guidance < ActiveRecord::Base
  attr_accessible :file_id, :text, :theme_id, :dmptemplate_id, :question_id
  
  #associations between tables
	belongs_to :question
	belongs_to :dmptemplate
	belongs_to :theme
	has_and_belongs_to_many :guidance_groups, join_table: "guidance_in_group"
	has_and_belongs_to_many :themes, join_table: "themes_in_guidance"
  
  accepts_nested_attributes_for :themes
  accepts_nested_attributes_for :guidance_groups
  
  attr_accessible :guidance_group_ids
  attr_accessible :theme_ids
  
 
	#verifies if one guidance belongs to a org
	def in_group_belonging_to?(organisation_id)
		guidance_groups.each do |guidance_group|
			if guidance_group.organisation_id == organisation_id then
				return true
			end
		end
		return false
	end
	
	
	#all guidance that belong to an organisation
	def self.by_organisation(org_id)
		all_guidance = Guidance.all
		org_guidance = Array.new
    
		all_guidance.each do |guidance|
		   if guidance.in_group_belonging_to?(org_id) then
				org_guidance << guidance
		   end
		end
		
		return org_guidance
		
	end
	
	
	def get_guidance_group_templates? (guidance_group)
			templates = guidancegroups.where("guidance_group_id (?)", guidance_group.id).template 
			return templates
		end
			
	
end
