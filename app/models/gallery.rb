class Gallery < ActiveRecord::Base

	has_many :photos, dependent: :destroy
	accepts_nested_attributes_for :photos
	validates_presence_of :name, :content
	validates_length_of :content, maximum: 255
	validates_length_of :name, maximum: 50
end
