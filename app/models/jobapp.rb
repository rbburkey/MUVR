class Jobapp < ActiveRecord::Base
  belongs_to :job
  belongs_to :mover
  belongs_to :user
  validates :mover_id, :uniqueness => {:scope => :job_id}

end
