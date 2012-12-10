class Search < ActiveRecord::Base
  attr_accessible :name, :sport, :athlete_id
  attr_accessor :athlete


  def athletes
    @athletes ||= find_athletes
  end
  
#private

  def find_athletes
    athletes = Athlete.order(:name)
   
    athletes = athletes.where("(name) like ?", "%#{name.upcase}%") if name.upcase.present?
    athletes = athletes.where("(sport) like ?", "%#{sport.upcase}%") if sport.upcase.present?
    athletes
  end
end