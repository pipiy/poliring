class RenameColumnVideoToPostVideo < ActiveRecord::Migration
  def change
    rename_column :posts, :video, :post_video
  end
end
