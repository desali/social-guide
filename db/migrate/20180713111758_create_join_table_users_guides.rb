class CreateJoinTableUsersGuides < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :guides do |t|

    end
  end
end
