class OfficersController < ApplicationController
	def index
		@officers = Officer.all
	end

	def new 
		@officer = Officer.new
	end
	
	def create
		# @officer = Officer.new
		# @officer.name = officer_params[:name]
		# @officer.year = officer_params[:year]
		# @officer.organization = Organization.find(officer_params[:organization_id])
		# @officer.position = officer_params[:position]
		@officer = Officer.create(officer_params)
		redirect_to '/'
	end


	def delete
		(Officer.find(params[:id])).destroy
		redirect_to '/'
	end

	private 
		def officer_params
			params.require(:officer).permit(:name, :year, :organization_id, :position)
		end
end
