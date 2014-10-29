class RemoveDepthFromSections < ActiveRecord::Migration
  def change
    remove_column :sections, :depth, :integer
  end
end
