class AddIndexToSections < ActiveRecord::Migration
  def change
    add_column :sections, :index, :integer
  end
end
