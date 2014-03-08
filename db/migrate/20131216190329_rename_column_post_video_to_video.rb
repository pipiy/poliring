class RenameColumnPostVideoToVideo < ActiveRecord::Migration
  def change
    rename_column :posts, :post_video, :video
  end
end
