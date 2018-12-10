class RenamePicture1ToTpicture < ActiveRecord::Migration[5.1]

    def change
    rename_column :tpictures, :picture1, :tpicture
  end

end
