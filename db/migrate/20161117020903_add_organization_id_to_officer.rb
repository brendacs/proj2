class AddOrganizationIdToOfficer < ActiveRecord::Migration[5.0]
  def change
  	add_column :officers, :organization_id, :integer
  	add_column :committee_members, :officer_id, :integer
  end
end
