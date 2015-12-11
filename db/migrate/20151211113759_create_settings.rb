class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string "setting_model", null: false
      t.string "setting_name", null: false
      t.text "setting_value"
      t.timestamps null: false
    end
    add_index("settings", "setting_model")
    add_index("settings", "setting_name")
  end
end
