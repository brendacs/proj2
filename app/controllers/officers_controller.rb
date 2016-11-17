class OfficersController < ApplicationController
	def index
		@officers = Officer.all
	end

	def new 
		@officer = Officer.new
	end
	
	def create
		@officer = Officer.new
		@officer.name = params[:name]
		@officer.year = params[:year]
		@officer.position = params[:position]
		@officer.save
		redirect_to '/'
	end
end
