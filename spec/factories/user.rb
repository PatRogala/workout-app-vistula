FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
    height { 175 }
    weight { 70 }
    age { 25 }
  end
end
