class RemoveDateFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :date, :date
  end
end
