class CreatePaintings < ActiveRecord::Migration[5.1]
  def up
    create_table :paintings do |t|
      t.integer :gallery_id
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :paintings
  end
end
