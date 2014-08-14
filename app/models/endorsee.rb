class Endorsee < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
