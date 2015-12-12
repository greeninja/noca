class CreateHandovers < ActiveRecord::Migration
  def change
    create_table :handovers do |t|
      t.string "title", null: false
      t.integer "team", null: false
      t.boolean "status", default: false
      t.string "assigned_user"
      t.timestamps null: false
    end
  end
end
