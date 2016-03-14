class Mover < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
validates :user_name, uniqueness: true
  has_many :jobs, through: :jobapps
  has_many :users, through: :jobs
  has_many :reviews
  has_many :jobapps

# for messaging
acts_as_messageable
#Returning any kind of identification you want for the model
def name
user_name
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

  has_attached_file :avatar, styles: {:medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def self.search(search)
    where("service_area LIKE ?", "%#{search}%")
  end

end
