class Gallery < ActiveRecord::Base
	has_many :photos, dependent: :destroy
	validates_presence_of :name, :content
	validates_length_of :content, maximum: 255
	validates_length_of :name, maximum: 50
end
