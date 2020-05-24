class OpenCourse < ApplicationRecord
  belongs_to :course
  belongs_to :teacher

  validates :term, inclusion: { in: %w(S F),
    message: "%{value} is not a valid term" }
  validates :schedule, format: {with: /\A[1-5]-[1-9]\z/,
    message: "'s format should be '[1-5]-[1-9]'"}
end
