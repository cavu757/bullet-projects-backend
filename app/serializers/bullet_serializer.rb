class BulletSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :content, :category, :complete, :date
  belongs_to :project
end
