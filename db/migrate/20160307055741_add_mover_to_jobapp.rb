class AddMoverToJobapp < ActiveRecord::Migration
  def change
    add_reference :jobapps, :mover, index: true, foreign_key: true
  end
end
