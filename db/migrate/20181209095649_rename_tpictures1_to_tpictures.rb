class RenameTpictures1ToTpictures < ActiveRecord::Migration[5.1]
  def change
    rename_column :tables, :pictures1, :tpictures
  end
end
