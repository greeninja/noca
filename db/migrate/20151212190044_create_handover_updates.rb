class CreateHandoverUpdates < ActiveRecord::Migration
  def change
    create_table :handover_updates do |t|
      t.integer "handover_id"
      t.string "user_name"
      t.text "update"
      t.timestamps null: false
    end
  end
end
