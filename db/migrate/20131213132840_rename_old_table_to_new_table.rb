class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
    rename_table :paintings, :projects
  end 
end
