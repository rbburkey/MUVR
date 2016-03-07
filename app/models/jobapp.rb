class Jobapp < ActiveRecord::Base
  belongs_to :job
  belongs_to :mover
  validates :mover_id, :uniqueness => {:scope => :job_id}

end
