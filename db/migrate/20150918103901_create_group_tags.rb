class CreateGroupTags < ActiveRecord::Migration
  def change
    create_table :group_tags do |t|

      t.timestamps null: false
    end
  end
end
