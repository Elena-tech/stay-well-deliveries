class CreateCollaborators < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborators do |t|
      t.string :first_name
      t.string :last_name
      t.integer :telephone
      t.string :neighbourhood
      t.string :postcode
      t.string :transport_type
      t.string :active_deliveries

      t.timestamps
    end
  end
end
