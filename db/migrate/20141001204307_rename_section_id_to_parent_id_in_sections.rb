class RenameSectionIdToParentIdInSections < ActiveRecord::Migration
  def change
  	rename_column :sections, :section_id, :parent_id
  end
end
