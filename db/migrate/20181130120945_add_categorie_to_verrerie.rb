class AddCategorieToVerrerie < ActiveRecord::Migration[5.1]
  def change
    add_column :verreries, :categorie, :string
  end
end
