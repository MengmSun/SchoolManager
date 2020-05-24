class Teacher < Person
  belongs_to :department
  has_many :courses, through: :open_courses
  has_one :clazz

  validates :department_id, presence: true
  validate :work_id_should_not_change

  def work_id_should_not_change
    if work_id_changed? && self.persisted?
      errors.add(:work_id, "cannot be changed!")
    end
  end
end
