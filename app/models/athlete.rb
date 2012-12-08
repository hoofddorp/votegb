class Athlete < ActiveRecord::Base
  attr_accessible :age, :average_rating, :bronze, :dob, :event, :gold, :name, :region, :sex, :silver, :sport, :total_medals
end
