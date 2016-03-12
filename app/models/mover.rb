class Mover < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :jobs, through: :jobapps
  has_many :users, through: :jobs
  has_many :reviews
  has_many :jobapps

# for messaging
acts_as_messageable

  has_attached_file :avatar, styles: {:medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def self.search(search)
    where("service_area LIKE ?", "%#{search}%")
  end

end
