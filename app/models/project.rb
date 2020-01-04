class Project < ApplicationRecord
  has_many :bullets
  validates :name, :deadline, presence: true
end
