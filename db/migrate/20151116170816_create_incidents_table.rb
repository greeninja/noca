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
    create_table :incidents_tables do |t|
    end
  end
end
