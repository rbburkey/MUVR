class AddAcceptedToJobapp < ActiveRecord::Migration
  def change
    add_column :jobapps, :accepted, :boolean, default: false

  end
end
