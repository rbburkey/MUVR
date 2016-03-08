class AddUserToJobapps < ActiveRecord::Migration
  def change
    add_reference :jobapps, :user, index: true, foreign_key: true
  end
end
