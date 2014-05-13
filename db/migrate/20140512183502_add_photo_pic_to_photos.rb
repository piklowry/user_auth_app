class AddPhotoPicToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :photo_pic, :string
  end
end
