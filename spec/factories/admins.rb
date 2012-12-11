# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin do |admin|
    admin.name 'Admin'
    admin.email 'admin@admin.com'
    admin.password 'password'
    admin.password_confirmation 'password'
  end
end
