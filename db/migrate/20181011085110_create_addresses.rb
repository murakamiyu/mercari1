class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :area
      t.string :postal_code
      t.string :city
      t.string :address1
      t.string :address2
      t.integer :user_id

      t.timestamps
    end
  end
end
