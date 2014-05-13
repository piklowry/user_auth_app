class Photo < ActiveRecord::Base
	belongs_to :user
	mount_uploader :photo_pic, PhotoPicUploader
	

	def send_new_photo_to_all
	Photo.new_photo_message_to_group(Photo.all, self)


		end
end

