class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.integer :guide_id
      t.date :date
      t.string :state

      t.timestamps
    end
  end
end
