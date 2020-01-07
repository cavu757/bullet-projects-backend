class Project < ApplicationRecord
  has_many :bullets
  validates :name, :deadline, presence: true

  def days_left
    days_left = (self.deadline - Date.today).round
    if days_left <= 0
      return "OVERDUE"
    else
      return days_left
    end
  end

end
