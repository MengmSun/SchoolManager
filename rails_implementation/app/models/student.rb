class Student < Person
  belongs_to :clazz
  has_many :course_selections
  has_many :open_courses, through: :course_selections
  has_many :courses, through: :open_courses
  has_many :grade_changes
  has_many :department_changes
  has_many :status_changes

  validates :clazz_id, presence: true
  validate :student_id_should_not_change

  private
  def student_id_should_not_change
    if student_id_changed? && self.persisted?
      errors.add(:student_id, "cannot be changed!")
    end
  end
end
