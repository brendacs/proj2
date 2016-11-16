class CreateOfficers < ActiveRecord::Migration[5.0]
  def change
    create_table :officers do |t|
      t.string :name
      t.integer :year
      t.string :position

      t.timestamps
    end
  end
end
