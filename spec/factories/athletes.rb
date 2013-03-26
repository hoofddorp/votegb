# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :athlete do
    name "Person"
    sport "Sailing"
    event "MyString"
    dob "2012-12-08"
    age 1
    sex "MyString"
    gold 1
    silver 1
    bronze 1
    total_medals 1
    region "MyString"
    average_rating 1.5
  end
end
