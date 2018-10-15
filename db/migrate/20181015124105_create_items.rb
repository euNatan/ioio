class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :collection_id
      t.integer :user_id
      t.text :descriprion
      t.integer :status_id

      t.timestamps
    end
  end
end
