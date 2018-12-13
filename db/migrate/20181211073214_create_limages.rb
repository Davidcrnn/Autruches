class CreateLimages < ActiveRecord::Migration[5.1]
  def change
    create_table :limages do |t|
      t.string :limage
      t.integer :lyfestyle_id
      t.timestamps
    end
  end
end
