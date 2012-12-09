class Athlete < ActiveRecord::Base
  attr_accessible :age, :average_rating, :bronze, :dob, :event, :gold, :name, :region, :sex, :silver, :sport, :total_medals

  has_many :reviews
  has_many :votes
  
  acts_as_voteable
end
