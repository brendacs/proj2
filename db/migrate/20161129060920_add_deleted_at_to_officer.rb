class AddDeletedAtToOfficer < ActiveRecord::Migration[5.0]
  def change
    add_column :officers, :deleted_at, :datetime
    add_index :officers, :deleted_at
  end
end
