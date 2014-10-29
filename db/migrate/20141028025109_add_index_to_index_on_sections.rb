class AddIndexToIndexOnSections < ActiveRecord::Migration
  def change
  	add_index :sections, :index, unique: false
  end
end
