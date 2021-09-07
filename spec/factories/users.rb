FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    username 'foo@bar'
    password 'foobar'
  end
end