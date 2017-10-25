class RemoveLicensePhotoPathFromCadets < ActiveRecord::Migration[5.1]
  def change
    remove_column :cadets, :license_photo_path, :attachment
  end
end
