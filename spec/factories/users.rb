# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do |user|
    user.name 'Test User'
    user.email 'example@example.com'
    user.password 'password'
    user.password_confirmation 'password'
  end
end
