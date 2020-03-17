class ChangeIntegerLimitforCollaborators < ActiveRecord::Migration[5.2]
  def change
    change_column :collaborators, :telephone, :integer, limit: 8
  end
end
