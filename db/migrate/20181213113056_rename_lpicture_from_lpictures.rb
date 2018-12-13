class RenameLpictureFromLpictures < ActiveRecord::Migration[5.1]
  def change
    rename_column :lpictures, :lpictures, :lpicture
  end
end
