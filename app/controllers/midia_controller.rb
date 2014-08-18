class MidiaController < ApplicationController
	def index
		@galleries = Gallery.all
	end
end
