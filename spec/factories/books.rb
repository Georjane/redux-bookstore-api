FactoryBot.define do
  factory :book do
    title { Faker::Lorem.word }
    category { Faker::Lorem.word }
  end
end