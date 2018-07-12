class CreateQuestionnaires < ActiveRecord::Migration[5.2]
  def change
    create_table :questionnaires do |t|
      t.integer :user_id
      t.string :role

      t.timestamps
    end
  end
end
