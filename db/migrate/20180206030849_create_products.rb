class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :detail
      t.integer :price
      t.string :picture
      t.references :shop, foreign_key: true

      t.timestamps
    end
    add_index :products, [:shop_id, :created_at]
  end
end
