class CreateHandovers < ActiveRecord::Migration
  def change
    create_table :handovers do |t|

      t.timestamps null: false
    end
  end
end
