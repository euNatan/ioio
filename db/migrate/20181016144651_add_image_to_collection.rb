class AddImageToCollection < ActiveRecord::Migration[5.0]
  def change
    add_column :collections, :image, :string
  end
end
