class OrganizationsController < ApplicationController

	def index
		@organizations = Organziations.all
	end

	def create
		Organization.create(
			:name => params[:name])
		redirect_to '/'
	end
end
