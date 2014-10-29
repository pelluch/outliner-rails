class AddSectionReferenceToSections < ActiveRecord::Migration
  def change
    add_reference :sections, :section, index: true
  end
end
