class Image < ApplicationRecord
  belongs_to :album
  has_one_attached :drawing
  has_rich_text :body

  def optimized_image(image,x,y)
    return image.variant(resize_to_fill: [x, y]).processed
  end
end
