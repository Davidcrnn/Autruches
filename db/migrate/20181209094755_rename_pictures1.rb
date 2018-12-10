class RenamePictures1 < ActiveRecord::Migration[5.1]

  def self.up
    rename_table :pictures1, :tpictures
  end

  def self.down
    rename_table :tpictures, :pictures1
  end

end
