class AddImageToPaintings < ActiveRecord::Migration[5.1]
  def up
    add_column :paintings, :image, :string
  end

  def down
    remove_column :paintings, :image
  end
end
