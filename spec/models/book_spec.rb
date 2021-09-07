require 'rails_helper'

RSpec.describe Book, type: :model do
  let!(:name) { "sample name" }
    # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  # it { should have_many(:items).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:category) }
end
