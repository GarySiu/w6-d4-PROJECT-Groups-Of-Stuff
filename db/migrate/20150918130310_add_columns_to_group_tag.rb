class AddColumnsToGroupTag < ActiveRecord::Migration
  def change
    add_column :group_tags, :author_id, :integer
    add_column :group_tags, :group_id, :integer
  end
end
