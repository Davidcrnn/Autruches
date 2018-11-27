class AddPicturesToVerrerie < ActiveRecord::Migration[5.1]
  def change
    add_column :verreries, :pictures, :string
  end
end
