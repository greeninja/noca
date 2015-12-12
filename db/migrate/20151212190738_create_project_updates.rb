class CreateProjectUpdates < ActiveRecord::Migration
  def change
    create_table :project_updates do |t|
      t.integer "project_id"
      t.text "comment"
      t.string "user_name"
      t.timestamps null: false
    end
  end
end
