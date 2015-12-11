class AddSettingNiceName < ActiveRecord::Migration
  def change
    add_column("settings", "setting_nice", :string)
  end
end
