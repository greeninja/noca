class Setting < ActiveRecord::Base
  belongs_to :incident

  # Scopes for incident
  scope :setting_models, lambda { Setting.uniq.pluck(:setting_model) }
  scope :display, lambda { where(:setting_name => 'model_description') }
end
