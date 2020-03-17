class ChangeIntegerLimitforRecipients < ActiveRecord::Migration[5.2]
  def change
    change_column :recipients, :telephone, :integer, limit: 8
  end
end
