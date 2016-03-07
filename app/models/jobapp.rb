class Jobapp < ActiveRecord::Base
  belongs_to :jobs
  belongs_to :movers
  validates :mover_id, :uniqueness => {:scope => :job_id}

end
