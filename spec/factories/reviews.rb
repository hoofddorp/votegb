# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    user_id 1
    athlete_id 1
    performance_rating 1
    review_summary "MyString"
    review "MyText"
  end
end
