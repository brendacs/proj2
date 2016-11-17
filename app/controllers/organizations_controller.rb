class OrganizationsController < ApplicationController

	def index
		@organizations = Organization.all
	end

	def create
		Organization.create(
			:name => params[:name])
		redirect_to '/'
	end
end
