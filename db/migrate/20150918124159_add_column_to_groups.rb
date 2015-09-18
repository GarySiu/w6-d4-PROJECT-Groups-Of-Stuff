class AddColumnToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :author_id, :integer
  end
end
