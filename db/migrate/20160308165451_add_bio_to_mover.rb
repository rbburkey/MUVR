class AddBioToMover < ActiveRecord::Migration
  def change
    add_column :movers, :bio, :text
  end
end
