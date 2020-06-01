class Album < ApplicationRecord
	has_many :images, :dependent => :destroy
	has_one_attached :thumbnail

	def thumbnail_f
  		return self.thumbnail.variant(resize: "250x250!").processed
 	end
end
