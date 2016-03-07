class AddUserAreaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_area, :string
  end
end
