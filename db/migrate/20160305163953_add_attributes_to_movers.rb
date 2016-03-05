class AddAttributesToMovers < ActiveRecord::Migration
  def change
   add_column :movers, :first_name, :string
   add_column :movers, :last_name, :string
   add_column :movers, :user_name, :string
   add_column :movers, :drivers_license, :string
   add_column :movers, :service_area, :string
   add_column :movers, :truck_available, :boolean, :default => false
 end
end
