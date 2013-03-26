class Review < ActiveRecord::Base
  attr_accessible :athlete_id, :performance_rating, :review, :review_summary, :user_id

  validates :review_summary, :presence => true

  belongs_to :athlete
  belongs_to :user
end
