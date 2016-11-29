class OrganizationsController < ApplicationController

	def index
		@organizations = Organization.all
		@committee_members = CommitteeMember.all
		@officers = Officer.all
	end

	def new 
		@organization = Organization.new
	end

	def create
		Organization.create(org_params)
		redirect_to '/'
	end

	private
	
		def org_params
			params.require(:organization).permit(:name)
		end

	def archived
	end

end
