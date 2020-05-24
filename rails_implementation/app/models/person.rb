class Person < ApplicationRecord
  validates :gender, inclusion: { in: %w(M F),
    message: "%{value} is not a valid gender" }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
