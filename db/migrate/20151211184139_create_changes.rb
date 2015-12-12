class CreateChanges < ActiveRecord::Migration
  def change
    create_table :changes do |t|
      t.string "title", null: false
      t.string "platform", null: false
      t.string "type", null: false
      t.string "details", null: false
      t.integer "level"
      t.string "workflow"
      t.boolean "approved", default: false
      t.timestamps null: false
    end
  end
end
