class Book < ApplicationRecord
  belongs_to :user
  # validations
  validates_presence_of :title, :category
end
