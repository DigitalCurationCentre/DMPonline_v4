ActiveAdmin.register Guidance do

	menu :priority => 13, :label => proc{ I18n.t('admin.guidance')}, :parent => "Guidance list"
	 
	index do   #:file_id, :text, :guidance_group_id, :theme_id, :question_id
  		column (:text) { |guidance| raw(guidance.text) }
  		column I18n.t('admin.theme') do |t|
	 		 (t.themes.map{|t_q| link_to t_q.title, [:admin, t_q]}).join(', ').html_safe
        end	  
        column I18n.t('admin.old_theme_field'), :sortable => :theme_id do |t|
            t.theme
        end	 	 		
        column I18n.t('admin.question'),  :sortable => :question_id do |que|
            if !que.nil? then
                que.question
            else
                '-'	
            end	
	    end
	    column I18n.t('admin.old_temp_field'), :sortable => :dmptemplate_id do |temp| 
	    	if !temp.nil? then
	    		temp.dmptemplate
	    	else
   				'-'	
   			end	
	    end  	
	    column I18n.t('admin.guidance_group') do |guidance| 
	    	(guidance.guidance_groups.map{|t_q| link_to t_q.name, [:admin, t_q]}).join(', ').html_safe
	    end  	
        default_actions
    end
  
    #show details of a question
	show do
		attributes_table do
			row (:text) { |guidance| raw(guidance.text) }
			row I18n.t('admin.old_theme_field'), :theme_id do |guidance|
                guidance.theme
            end
            row I18n.t('admin.theme') do
                (guidance.themes.map{|t_q| link_to t_q.title, [:admin, t_q]}).join(', ').html_safe
            end	
            row I18n.t('admin.question'), :question_id do |question|
                question.question
            end
            row I18n.t('admin.guidance_group') do |guidance| 
                (guidance.guidance_groups.map{|t_q| link_to t_q.name, [:admin, t_q]}).join(', ').html_safe
            end	
            row I18n.t('admin.old_temp_field'), :dmptemplate do |temp|
                if !temp.dmptemplate.nil? then
                    link_to temp.dmptemplate.title, [:admin, temp.dmptemplate]
                end
            end  	
            row :created_at
            row :updated_at
		end
	end

	#form 
    form do |f|
        f.inputs "Details" do
            f.input :text
            f.input :question_id, :as => :select, 
                    :collection => Question.find(:all, :order => 'text ASC').map{|que|[que.text, que.id]}
            f.input :guidance_group_ids, :label => I18n.t('admin.guidance_group'), 
                    :as => :select, 
                    :collection => GuidanceGroup.find(:all, :order => 'name ASC').map{|gui|[gui.name, gui.id]}
            f.input :theme, :as => :select, 
                    :label =>'Old theme field',
                    :collection => Theme.find(:all, :order => 'title ASC').map{|the| [the.title, the.id]}		
                
        end
        f.inputs "Themes" do
            f.input :theme_ids, :label => "Selected themes",
                    :as => :select, 
                    :include_blank => "All themes", 
                    :multiple => true,
                    :collection => Theme.order('title').map{|the| [the.title, the.id]},
                    :hint => 'Choose all themes that apply.'	
        end
        
        f.actions  
    end			
	
	
end
