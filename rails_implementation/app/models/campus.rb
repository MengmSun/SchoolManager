class Campus < ApplicationRecord
  has_many :departments

  validates :code, presence: true
  validate :code_should_not_change

  private
  def code_should_not_change
    if code_changed? && self.persisted?
      errors.add(:code, "cannot be changed!")
    end
  end
end
