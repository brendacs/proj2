class Organization < ApplicationRecord
	validates :name, uniqueness: true, presence: true
	has_many :officers
	has_many :committee_members
end