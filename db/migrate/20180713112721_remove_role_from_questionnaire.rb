class RemoveRoleFromQuestionnaire < ActiveRecord::Migration[5.2]
  def change
    remove_column :questionnaires, :role, :string
  end
end
