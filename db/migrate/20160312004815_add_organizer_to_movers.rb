class AddOrganizerToMovers < ActiveRecord::Migration
  def change
    add_column :movers, :organizer, :boolean, :default => false
  end
end
