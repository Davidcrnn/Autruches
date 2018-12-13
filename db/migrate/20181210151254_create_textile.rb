class CreateTextile < ActiveRecord::Migration[5.1]
  def change
    create_table :textiles do |t|
      t.string :titre
      t.string :tepictures
      t.string :categorie
      t.string :tephoto
      t.text :description
      t.integer :prix
      t.boolean :visible, default: true, null: false
      t.timestamps
    end
  end
end
