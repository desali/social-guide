class CreateJoinTableQuestionnairesInterests < ActiveRecord::Migration[5.2]
  def change
    create_join_table :questionnaires, :interests do |t|

    end
  end
end
