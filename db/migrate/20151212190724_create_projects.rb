class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string "title", null: false
      t.string "assigned_user" 
      t.string "created_by"
      t.timestamp "required_by"
      t.string "progress"
      t.boolean "status"
      t.text "brief"
      t.string "team"
      t.timestamps null: false
    end
  end
end
