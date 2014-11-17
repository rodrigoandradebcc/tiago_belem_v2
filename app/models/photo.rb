class Photo < ActiveRecord::Base
	belongs_to :gallery
	validates_presence_of :image, :gallery_id
	mount_uploader :image, ImageUploader
	
end
