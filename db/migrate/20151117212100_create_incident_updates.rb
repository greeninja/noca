class CreateIncidentUpdates < ActiveRecord::Migration
  def change
    create_table :incident_updates do |t|
      t.integer "incident_id"
      t.text "cs_update"
      t.text "tech_update"
      t.timestamps null: false
    end
    add_index("incident_updates", "incident_id")
  end
end
