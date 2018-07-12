class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.integer :categorie_id
      t.string :name
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
