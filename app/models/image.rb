class Image < ApplicationRecord
  belongs_to :album
  has_one_attached :drawing
  has_rich_text :body

	def drawing_f
  		return self.drawing.variant(resize: "300x300!").processed
 	end
end
