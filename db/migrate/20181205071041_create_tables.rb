class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.string :titre
      t.string :pictures1
      t.string :categorie
      t.string :photo1
      t.text :description
      t.integer :prix
      t.boolean :visible, default: true, null: false

      t.timestamps
    end
  end
end
