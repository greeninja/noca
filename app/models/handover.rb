class Handover < ActiveRecord::Base
  has_many :handover_updates
  accepts_nested_attributes_for :handover_updates
  validates_presence_of :title

  scope :open, lambda { where(:status => false).order("handover.created_at DESC") }
  scope :closed, lambda { where(:status => true).order("handover.created_at DESC") }
end
