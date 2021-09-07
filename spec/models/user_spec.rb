require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:name) { "sample name" }
  # Association test
  # ensure User model has a 1:m relationship with the Todo model
  it { should have_many(:books) }
  # Validation tests
  # ensure name, email and password_digest are present before save
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
end
