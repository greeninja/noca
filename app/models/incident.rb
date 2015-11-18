class Incident < ActiveRecord::Base
  has_many :incident_updates
  validates_presence_of :title
  validates_presence_of :incident_manager
  validates_presence_of :update_due

  # Now add some scopes to use
  scope :csopen, lambda { where(:cs_status => false) }
  scope :techopen, lambda { where(:tech_status => false) }
  scope :techclosed, lambda { where(:tech_status => true) }
  scope :csclosed, lambda { where(:cs_status => true) }
  # Would be nice if this worked...
  scope :open, lambda { where("cs_status = ? or tech_status = ?", "0", "0") }
  scope :opensorted, lambda { where("cs_status = ? or tech_status = ?", "0", "0").order("incidents.created_at DESC") } 
  scope :sorted, lambda { order("incidents.created_at DESC") }
  scope :nextupdate, lambda { order("incidents.update_due DESC") }
  scope :closedsorted, lambda { where("cs_status = ? or tech_status = ?", "1", "1").order("incidents.created_at DESC") }
  scope :search, lambda {|query|
    where(["name LIKE ?", "%#{query}%"])
    }
end
