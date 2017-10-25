class AddLicenseAndPhotoToCadet < ActiveRecord::Migration[5.1]
  def self.up
    change_table :cadets do |t|
      #t.attachment :profile_photo
      #t.atachment :license
      add_attachment :cadets, :profile_photo
      add_attachment :cadets, :license
    end
  end

  def self.down
    remove_attachment :cadets, :profile_photo
    remove_attachment :cadets, :license
  end
end
