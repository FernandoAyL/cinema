class AddAttachmentAvatarToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.attachment :users
    end
  end

  def self.down
    remove_attachment :users, :avatar
  end
end