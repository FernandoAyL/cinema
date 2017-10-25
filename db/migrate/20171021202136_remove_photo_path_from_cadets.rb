class RemovePhotoPathFromCadets < ActiveRecord::Migration[5.1]
  def change
    remove_column :cadets, :photo_path, :attachment
  end
end
