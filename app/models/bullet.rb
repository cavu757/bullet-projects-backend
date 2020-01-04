class Bullet < ApplicationRecord
  belongs_to :project
  validates :project_id, :content, :date, presence: true
  validates_inclusion_of :category, :in => ['task','event','note']


end
