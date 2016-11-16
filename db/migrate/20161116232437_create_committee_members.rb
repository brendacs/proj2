class CreateCommitteeMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :committee_members do |t|
      t.string :name
      t.integer :year
      t.string :position

      t.timestamps
    end
  end
end
