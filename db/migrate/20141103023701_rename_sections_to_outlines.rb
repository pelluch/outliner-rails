class RenameSectionsToOutlines < ActiveRecord::Migration
  def change
    rename_table :sections, :outlines
  end
end
