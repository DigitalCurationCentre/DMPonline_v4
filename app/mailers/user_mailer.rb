class UserMailer < ActionMailer::Base
	default from: ENV['USER_MAILER_EMAIL_FROM']
	
	def sharing_notification(project_group)
		@project_group = project_group
		mail(to: @project_group.user.email, subject: "You have been given access to a Data Management Plan")
	end
	
	def permissions_change_notification(project_group)
		@project_group = project_group
		mail(to: @project_group.user.email, subject: "DMP permissions changed")
	end
	
	def project_access_removed_notification(user, project)
		@user = user
		@project = project
		mail(to: @user.email, subject: "DMP access removed")
	end
end
