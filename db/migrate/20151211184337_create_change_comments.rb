class CreateChangeComments < ActiveRecord::Migration
  def change
    create_table :change_comments do |t|

      t.timestamps null: false
    end
  end
end
