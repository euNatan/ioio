class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.string :title
      t.text :description
      t.boolean :active
      t.string :button

      t.timestamps
    end
  end
end
