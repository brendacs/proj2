class OfficersController < ApplicationController
	def index
		@officers = Officer.all
	end

	def new 
		@officer = Officer.new
	end
	
	def create
		@officer = Officer.new
		@officer.name = officer_params[:name]
		@officer.year = officer_params[:year]
		@officer.organization = Organization.where(name: officer_params[:organization])
		@officer.position = officer_params[:position]
		redirect_to '/'
	end

	def officer_params
		params.require(:officer).permit(:name, :year, :organization, :position)
	end

	def delete
		(Officer.find(params[:id])).destroy
	end
end
