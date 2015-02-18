ActiveAdmin.register QuestionFormat do
	
	menu :priority => 1, :label => proc{I18n.t('admin.question_format')}, :parent =>  "Templates management"

	index do   # :description, :title
        column I18n.t('admin.question_format'), :sortable => :title do |n|
            link_to n.title, [:admin, n]
        end
            
        default_actions
    end
  
    # show Template details
	show do 
		attributes_table do
			row :title
			row :description do |descr|
                if !descr.description.nil? then
                    descr.description.html_safe
                end
            end
			row :created_at
			row :updated_at
        end
    end
  	
end
