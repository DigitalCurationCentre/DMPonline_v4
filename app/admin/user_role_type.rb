ActiveAdmin.register UserRoleType do
	
	 menu :priority => 5, :label => proc{I18n.t('admin.user_role_type')}, :parent => "User management"

	index do   # :description, :name
        column I18n.t('admin.title'), :sortable => :name do |user_n|
            link_to user_n.name, [:admin, user_n]
        end
        column I18n.t('admin.desc'),:description do |descr|
            if !descr.description.nil? then
                descr.description.html_safe
            end
  		end
  	
        default_actions
    end

end
