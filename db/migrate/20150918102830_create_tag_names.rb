class CreateTagNames < ActiveRecord::Migration
  def change
    create_table :tag_names do |t|

      t.timestamps null: false
    end
  end
end
