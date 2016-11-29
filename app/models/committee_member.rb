class CommitteeMember < ApplicationRecord
	belongs_to :organization
	belongs_to :officer

	acts_as_paranoid
end
