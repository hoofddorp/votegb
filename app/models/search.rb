class Search < ActiveRecord::Base
  attr_accessible :name, :sport, :athlete_id
  attr_accessor :athlete


  def athletes
    @athletes ||= find_athletes
  end
  
private

  def find_athletes
    athletes = Athlete.order(:name)

    athletes = athletes.where("(name) like ?", "%#{name.upcase}%") if name.upcase.present?
    athletes = athletes.where("(sport) like ?", "%#{sport.upcase}%") if sport.upcase.present?
    athletes = athletes.where("(name) like ?", "%#{name.downcase}%") if name.downcase.present?
    athletes = athletes.where("(sport) like ?", "%#{sport.downcase}%") if sport.downcase.present?
    ["athletes.name LIKE ?", "%#{name}%"] unless name.blank?
    ["athletes.sport LIKE ?", "%#{sport}%"] unless sport.blank?
    athletes
  end
end