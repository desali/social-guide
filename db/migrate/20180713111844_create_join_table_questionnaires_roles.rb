class CreateJoinTableQuestionnairesRoles < ActiveRecord::Migration[5.2]
  def change
    create_join_table :questionnaires, :roles do |t|

    end
  end
end
