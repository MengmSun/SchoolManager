class Department < ApplicationRecord
  belongs_to :teacher, optional: true
  belongs_to :campus
  has_many :teachers
  has_many :clazzes
  has_many :courses

  validate :code_should_not_change

  private
  def code_should_not_change
    if code_changed? && self.persisted?
      errors.add(:code, "cannot be changed!")
    end
  end
end
