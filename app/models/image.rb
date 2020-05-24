class Image < ApplicationRecord
  belongs_to :album
  has_one_attached :drawing
  has_rich_text :body
end
