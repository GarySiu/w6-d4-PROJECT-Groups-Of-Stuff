class AddColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :group_id, :integer
    add_column :items, :author_id, :integer
  end
end
