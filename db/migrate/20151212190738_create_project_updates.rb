class CreateProjectUpdates < ActiveRecord::Migration
  def change
    create_table :project_updates do |t|

      t.timestamps null: false
    end
  end
end
