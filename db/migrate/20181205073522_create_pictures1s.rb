class CreatePictures1s < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures1s do |t|
      t.string :picture1
      t.integer :table_id
      t.timestamps
    end
  end
end
