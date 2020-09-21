class Album < ApplicationRecord
	validates :thumbnail, presence: true
	validates :title, presence: true
	has_many :images, :dependent => :destroy
	has_one_attached :thumbnail

	def thumbnail_f
  		return self.thumbnail.variant(resize: "175x175!").processed
	end
	 
	def thumbnail_b
		return self.thumbnail.variant(resize: "400x400!").processed
  	end
	
	def album_first
		return album.first
	end
end
