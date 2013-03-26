class Search < ActiveRecord::Base
  attr_accessible :name, :sport, :athlete_id
  attr_accessor :athlete


  def athletes
    @athletes ||= find_athletes
  end
  
#private

  def find_athletes
    #athletes = Athlete.order(:name)
    
    Athlete.find(:all, :conditions => conditions)
  end
  
if Rails.env.production?
  def name_conditions
    ["athletes.name ILIKE ?", "%#{name}%"] unless name.blank?
  end
  
  def sport_conditions
    ["athletes.sport ILIKE ?", "%#{sport}%"] unless sport.blank?
  end
    
else
  
  def name_conditions
    ["athletes.name LIKE ?", "%#{name}%"] unless name.blank?
  end
  
  def sport_conditions
    ["athletes.sport LIKE ?", "%#{sport}%"] unless sport.blank?
  end  
end
    
  def conditions
  [conditions_clauses.join(' AND '), *conditions_options]
  end

  def conditions_clauses
    conditions_parts.map { |condition| condition.first }
  end

  def conditions_options
    conditions_parts.map { |condition| condition[1..-1] }.flatten
  end

  def conditions_parts
    private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
  end  
    
    
  #  athletes = athletes.where("(name) like ?", "%#{name.upcase}%") if name.upcase.present?
  #  athletes = athletes.where("(sport) like ?", "%#{sport.upcase}%") if sport.upcase.present?
  #  athletes = athletes.where("(name) like ?", "%#{name.downcase}%") if name.downcase.present?
  #  athletes = athletes.where("(sport) like ?", "%#{sport.downcase}%") if sport.downcase.present?
  #  ["athletes.name LIKE ?", "%#{name}%"] unless name.blank?
  #  ["athletes.sport LIKE ?", "%#{sport}%"] unless sport.blank?
  #  athletes
  #end
end