class Course < ApplicationRecord
  belongs_to :department
  has_many :open_courses

  validates :assessment_type, inclusion: { in: %w(defend exam),
    message: "%{value} is not a valid assessment type" }
end
