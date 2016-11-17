class CommitteeMemberController < ApplicationController
	def index
		@committeeMembers = CommitteeMember.all
	end

	def new 
		@committeeMember = CommitteeMember.new
	end

	def create
		@committeeMember = CommitteeMember.new
		@committeeMember.name = params[:name]
		@committeeMember.year = params[:year]
		@committeeMember.position = params[:position]
		@committeeMember.save
		redirect_to '/'
	end

	def show
		@committeeMember = CommitteeMember.find(params[:id])
	end

	def delete
		(CommitteeMember.find(params[:id])).destroy
	end
end
