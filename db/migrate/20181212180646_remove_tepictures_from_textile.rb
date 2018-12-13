class RemoveTepicturesFromTextile < ActiveRecord::Migration[5.1]
  def change
    remove_column :textiles, :tepictures
  end
end
