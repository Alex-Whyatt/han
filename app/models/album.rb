class Album < ApplicationRecord
	has_many :images, :dependent => :destroy
	has_one_attached :thumbnail

	def thumbnail_f
  		return self.thumbnail.variant(resize: "175x175!").processed
 	end
end
