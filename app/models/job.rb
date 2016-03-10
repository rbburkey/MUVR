class Job < ActiveRecord::Base

  belongs_to :user
  belongs_to :mover
  has_many :jobapps
  has_attached_file :image, styles: { large: "600x600", medium: "300x300", thumb: "150x150"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  geocoded_by :area
  after_validation :geocode
end
