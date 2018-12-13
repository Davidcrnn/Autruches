class AddCategorieToLyfestyle < ActiveRecord::Migration[5.1]
  def change
    add_column :lyfestyles, :categorie, :string
  end
end
