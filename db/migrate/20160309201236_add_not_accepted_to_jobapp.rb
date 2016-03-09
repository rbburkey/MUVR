class AddNotAcceptedToJobapp < ActiveRecord::Migration
  def change
    add_column :jobapps, :not_accepted, :boolean, default: false
  end
end
