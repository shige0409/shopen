class RenamePitureColumnToShops < ActiveRecord::Migration[5.1]
  def change
    rename_column :shops, :piture, :picture
  end
end
