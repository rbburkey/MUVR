class Review < ActiveRecord::Base
  belongs_to :users
  belongs_to :movers
end
