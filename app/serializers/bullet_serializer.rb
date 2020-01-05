class BulletSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :content, :category, :priority, :date
  belongs_to :project
end
