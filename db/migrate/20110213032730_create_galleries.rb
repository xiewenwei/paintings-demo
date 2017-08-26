class CreateGalleries < ActiveRecord::Migration[5.1]
  def up
    create_table :galleries do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :galleries
  end
end
