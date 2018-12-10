class RenamePictures1sToPicture1 < ActiveRecord::Migration[5.1]
  def change
    rename_table :pictures1s, :pictures1
  end
end
