class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :name
      t.string :surname
      t.date :birthdate
      t.string :phone

      t.timestamps
    end
  end
end
