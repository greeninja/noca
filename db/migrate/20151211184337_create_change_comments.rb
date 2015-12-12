class CreateChangeComments < ActiveRecord::Migration
  def change
    create_table :change_comments do |t|
      t.integer "change_id"
      t.text "comment"
      t.string "user_name"
      t.timestamps null: false
    end
  end
end
