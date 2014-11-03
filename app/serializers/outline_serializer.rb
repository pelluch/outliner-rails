class OutlineSerializer < ActiveModel::Serializer
  attributes :id, :name, :index, :content
  has_many :children
end
