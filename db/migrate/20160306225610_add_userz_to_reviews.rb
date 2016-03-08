class AddUserzToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :userz, :boolean, default: false
  end
end
