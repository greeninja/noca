class CreateIncidentsTable < ActiveRecord::Migration
  def change
    # TODO: 
    # Title
    # Source
    # Incident Manager => from Users table
    # Technical Owner  => from Users table
    # Priority         => Array from settings table
    # Impact           => Free text or from Asset DB somehow
    # Platform         => Array list for now - hopefull from assets table
    # CS Status        => boolean to Open / Closed
    # Technical Status => boolean Open / Closed
    # Update Due       => time.now + <%= Setting.priority.update_frequency %>.hour
    # Callout          => boolean for now 
    create_table :incidents do |t|
      t.string "title", :limit => 200
      t.string "source", :limit => 100
      t.string "incident_manager", null: false
      t.string "impact"
      t.string "platform"
      t.boolean "cs_status", default: false
      t.boolean "tech_status", default: false
      t.timestamp "update_due"
      t.boolean "callout", default: false
      t.timestamps null: false
    end
  end
end
