class DepartmentChange < StatusChange
  validate :student_should_have_only_one_department_change

  private
  def student_should_have_only_one_department_change
    if self.student.department_changes.count >= 1
      errors.add(student_id: ", he who already has got one department change")
    end
  end
end
