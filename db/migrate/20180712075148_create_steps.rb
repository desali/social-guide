class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.integer :guide_id
      t.string :name
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
