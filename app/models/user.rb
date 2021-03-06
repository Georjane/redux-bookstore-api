class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # Model associations
  has_many :books
  # Validations
  validates_presence_of :name, :username, :password_digest
end
