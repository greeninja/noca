class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string "title"
      t.string "author"
      t.text "content"
      t.timestamp "update_due"
      t.integer "parent"
      t.boolean "status"
      t.string "team"
      t.boolean "public"
      t.timestamps null: false
    end
  end
end
