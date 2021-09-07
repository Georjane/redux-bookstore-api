class Book < ApplicationRecord
  # validations
  validates_presence_of :title, :category
end
