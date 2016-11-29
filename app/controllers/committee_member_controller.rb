class CommitteeMemberController < ApplicationController
	def index
		@committeeMembers = CommitteeMember.all
	end

	def new 
		@committeeMember = CommitteeMember.new
	end

	def create
		@committeeMember = CommitteeMember.create(committee_member_params)
		redirect_to '/'
	end

	def show
		@committeeMember = CommitteeMember.find(params[:id])
	end

	def delete
		(CommitteeMember.find(params[:id])).destroy
		redirect_to '/'
	end

	private

		def committee_member_params
			params.require(:committee_member).permit(:name, :year, :officer_id, :position)
		end
end
