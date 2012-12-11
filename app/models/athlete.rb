class Athlete < ActiveRecord::Base
  attr_accessible :age, :average_rating, :bronze, :dob, :event, :gold, :name, :region, :sex, :silver, :sport, :total_medals

  validates :name, :region, :presence => true
  validates_uniqueness_of :name, :case_sensitive => false

  has_many :reviews
  has_many :votes
  
  acts_as_voteable
end
