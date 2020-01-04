class Bullet < ApplicationRecord
  belongs_to :project
  validates :content, :category, :date, presence: true
end
