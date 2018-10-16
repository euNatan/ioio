class AddCodeToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :code, :integer
  end
end
