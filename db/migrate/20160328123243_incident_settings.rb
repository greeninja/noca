class IncidentSettings < ActiveRecord::Migration
  def change
    create_table :incident_settings do |t|
      t.string "setting", null: false
      t.text "value", null: false
      t.text "info"
      t.boolean "enabled"
      t.timestamps null: false
    end
    add_index("incident_settings", "setting")
  end
end
