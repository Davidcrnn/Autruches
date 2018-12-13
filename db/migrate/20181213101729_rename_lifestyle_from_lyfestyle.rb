class RenameLifestyleFromLyfestyle < ActiveRecord::Migration[5.1]
  def change
    rename_column :lpictures, :lifestyle_id, :lyfestyle_id
  end
end
