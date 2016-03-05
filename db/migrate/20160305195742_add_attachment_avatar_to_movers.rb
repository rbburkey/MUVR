class AddAttachmentAvatarToMovers < ActiveRecord::Migration
  def self.up
    change_table :movers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :movers, :avatar
  end
end
