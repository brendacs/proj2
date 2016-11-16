class CommitteeMember < ApplicationRecord
	belongs_to :organization
	belongs_to :officer
end
