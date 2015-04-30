class UserMailer < ActionMailer::Base
	default from: 'info@dcc.ac.uk'
	
	def sharing_notification(project_group)
		@project_group = project_group
		mail(to: @project_group.user.email, subject: t('mail.access_granted'))
	end
	
	def permissions_change_notification(project_group)
		@project_group = project_group
		mail(to: @project_group.user.email, subject: t('mail.access_changed'))
	end
	
	def project_access_removed_notification(user, project)
		@user = user
		@project = project
		mail(to: @user.email, subject: t('mail.access_removed'))
	end
end
