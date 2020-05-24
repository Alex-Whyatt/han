class Image < ApplicationRecord
  has_many :albumisations, :dependent => :destroy
  has_many :albums, :through => :albumisations
  has_one_attached :drawing
  has_rich_text :body

  def optimized_image(image,x,y)
    return image.variant(resize_to_fill: [x, y]).processed
  end
end
