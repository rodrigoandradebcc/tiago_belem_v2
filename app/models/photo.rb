class Photo < ActiveRecord::Base
	belongs_to :gallery
	validates_presence_of :name, :image, :gallery_id
	mount_uploader :image, ImageUploader
end
