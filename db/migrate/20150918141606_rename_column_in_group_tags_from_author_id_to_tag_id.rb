class RenameColumnInGroupTagsFromAuthorIdToTagId < ActiveRecord::Migration
  def change
    rename_column :group_tags, :author_id, :tag_id
  end
end
