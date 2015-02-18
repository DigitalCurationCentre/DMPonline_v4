class ExistingUsersController < ApplicationController
	def index
		@email = params[:email]
	end
end