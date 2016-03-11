class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :movers, through: :jobs
  has_many :jobs, through: :jobapps, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :jobapps, dependent: :destroy


  has_attached_file :avatar, styles: {:medium => "300x300>", :thumb => "100x100>"} #:path =>'controllers/user/registrations_controller.rb'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
