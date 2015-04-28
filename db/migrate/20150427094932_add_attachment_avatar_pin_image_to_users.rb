class AddAttachmentAvatarPinImageToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :avatar
      t.attachment :pin
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :users, :avatar
    remove_attachment :users, :pin
    remove_attachment :users, :image
  end
end
