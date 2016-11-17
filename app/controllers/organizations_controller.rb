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
		Organization.create(
			:name => params[:name])
		redirect_to '/'
	end
end
