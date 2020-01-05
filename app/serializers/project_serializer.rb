class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :deadline, :days_left
  has_many :bullets
end
