class Athlete < ActiveRecord::Base
  attr_accessible :avatar, :age, :average_rating, :bronze, :dob, :event, :gold, :name, :region, :sex, :silver, :sport, :total_medals

  validates :name, :region, :presence => true
  validates_uniqueness_of :name, :case_sensitive => false

  has_many :reviews
  has_many :votes
  
  acts_as_voteable
  
  if Rails.env.production?
  has_attached_file :avatar,

  :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :storage => :s3,
    :url => ":s3_domain_url",
    :default_url => "/avatar/missing_:style.jpeg",
    :path => "/:class/avatar/:id_:basename.:style.:extension",
    :s3_credentials => {
      :bucket            => ENV['S3_BUCKET_NAME'],
      :access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']}
else
  has_attached_file :avatar,
   :styles => { :medium => "300x300>", :thumb => "100x100>" },
   :default_url => "/avatars/medium/missing_:style.jpeg"
   
  end
  validates_attachment_content_type :avatar, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/pjepg', 'image/x-png', 'image/pjpeg']
end
