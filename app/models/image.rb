class Image < ApplicationRecord
  belongs_to :album
  has_one_attached :drawing
  has_rich_text :body

	def drawing_f
  		return self.drawing.variant(resize: "250x200!").processed
 	end

 	def drawing_big
  		return self.drawing.variant(resize: "400x400!").processed
 	end
end
