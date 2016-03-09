class AddJobToJobapp < ActiveRecord::Migration
  def change
    add_reference :jobapps, :job, index: true, foreign_key: true
  end
end
