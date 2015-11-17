class IncidentUpdate < ActiveRecord::Base
  belongs_to :incident
  
  # Scopes
  scope :csupdate, lambda { where("cs_update IS NOT NULL").order("created_at DESC") }
  scope :techupdate, lambda { where("tech_update IS NOT NULL").order("created_at DESC") }
end
