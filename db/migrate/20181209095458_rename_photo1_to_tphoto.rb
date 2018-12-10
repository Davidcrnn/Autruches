class RenamePhoto1ToTphoto < ActiveRecord::Migration[5.1]
  def change
    rename_column :tables, :photo1, :tphoto
  end
end
