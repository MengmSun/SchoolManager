class GradeChange < StatusChange
  has_one :student

  validate :student_should_have_only_one_grade_change

  def student_code
    @student_code
  end

  def student_code=(student_code)
    self.student_id = Student.find_by(student_id: student_code).id
    @student_code = student_code
  end

  private
  def student_should_have_only_one_grade_change
    if self.student && self.student.grade_changes.count >= 1
      errors.add(student_id: ", he who already has got one grade change")
    end
  end
end
