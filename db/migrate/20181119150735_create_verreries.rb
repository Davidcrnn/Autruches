class CreateVerreries < ActiveRecord::Migration[5.1]
  def change
    create_table :verreries do |t|
      t.string :titre
      t.text :description
      t.string :photo
      t.integer :prix
      t.boolean :visible, default: true, null: false

      t.timestamps
    end
  end
end
