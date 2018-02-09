class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :profile
      t.string :picture
      t.integer :money
      t.integer :owner_id

      t.timestamps
    end
    add_index :shops, :name
    add_index :shops, :email, unique: true
  end
end
