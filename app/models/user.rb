class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates :email, uniqueness: true         
  has_many :movers, through: :jobs
  has_many :jobs, through: :jobapps, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :jobapps, dependent: :destroy

  # for messsaging
  acts_as_messageable

  has_attached_file :avatar, styles: {:medium => "300x300>", :thumb => "100x100>"} #:path =>'controllers/user/registrations_controller.rb'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  def name
  username
  end

  #Returning the email address of the model if an email should be sent for this object (Message or Notification).
  #If no mail has to be sent, return nil.
  def mailboxer_email(object)
    #Check if an email should be sent for that object
    #if true
  return email
    #if false
    #return nil
  end
end
