class CreateHandoverUpdates < ActiveRecord::Migration
  def change
    create_table :handover_updates do |t|

      t.timestamps null: false
    end
  end
end
