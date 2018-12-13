class RemoveTpicturesFromTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :tables, :tpictures
  end
end
