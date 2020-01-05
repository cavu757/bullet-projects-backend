class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :deadline
  has_many :bullets
end
