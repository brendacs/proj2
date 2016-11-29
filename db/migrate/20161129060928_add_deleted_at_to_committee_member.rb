class AddDeletedAtToCommitteeMember < ActiveRecord::Migration[5.0]
  def change
    add_column :committee_members, :deleted_at, :datetime
    add_index :committee_members, :deleted_at
  end
end
