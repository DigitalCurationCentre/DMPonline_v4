ActiveAdmin.register UserType do
	
	 menu :priority => 5, :label => proc{I18n.t('admin.user_type')}, :parent => "User management"

	index do   # :description, :name
        column I18n.t('admin.user_type'), :sortable => :name do |user_n|
            link_to user_n.name, [:admin, user_n]
        end
     	
        default_actions
    end
  
  # show Template details
	show do 
		attributes_table do
			row :name
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
