# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  parent_id  :integer
#  index      :integer
#

class Section < ActiveRecord::Base

	default_scope { order(index: :asc) }
	scope :root, -> { where(parent_id: nil) }
	validates_uniqueness_of :index, scope: :parent_id

	has_many :children, foreign_key: :parent_id, class_name: :"Section", dependent: :destroy
	belongs_to :parent, foreign_key: :parent_id, class_name: :"Section"
	validates_presence_of :name
	
	before_validation :check_index

	def check_index

		if changed_attributes.key? :index or changed_attributes.key? :parent_id
			old_index = changed_attributes[:index] || self.index
			new_index = self.index
			brothers = siblings
			moved_brother = brothers.find_by_index self.index

			if moved_brother.present?
				if changed_attributes.key? :parent_id
					old_brothers = Section.where(parent_id: changed_attributes[:parent_id])
					brothers.where("index >= ?", new_index).each do |brother|
						brother.update_attribute :index, brother.index + 1
					end
					old_brothers.where("index > ?", old_index).each do |brother|
						brother.update_attribute :index, brother.index - 1
					end
				else
					if new_index > old_index
						brothers.where("index <= ? and index >= ?", new_index, old_index).each do |brother|
							brother.update_attribute :index, brother.index - 1
						end
					else
						brothers.where("index >= ? and index <= ?", new_index, old_index).each do |brother|
							brother.update_attribute :index, brother.index + 1
						end
					end
				end				
			end
		end
	end

	def siblings
		Section.where(parent_id: self.parent_id).where.not(id: self.id)
	end

	def children_ids
		children.map { |s| s.id }
	end

	def depth
		section_depth = 0
		current_parent = self.parent
		while current_parent.present?
			section_depth = section_depth + 1
			current_parent = current_parent.parent
		end
		section_depth
	end

end
