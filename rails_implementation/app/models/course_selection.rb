class CourseSelection < ApplicationRecord
  belongs_to :open_course
  belongs_to :student
end
