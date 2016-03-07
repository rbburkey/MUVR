class AddMoverToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :mover, index: true, foreign_key: true
  end
end
