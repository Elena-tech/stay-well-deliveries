class CreateRecipients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :telephone
      t.string :neighbourhood
      t.string :postcode
      t.string :payment_type
      t.string :support_type

      t.timestamps
    end
  end
end
