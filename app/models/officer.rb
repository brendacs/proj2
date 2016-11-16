class Officer < ApplicationRecord
	belongs_to :organization
	has_many :committee_members
end
