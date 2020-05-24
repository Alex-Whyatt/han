class Albumisation < ApplicationRecord
	belongs_to :album
	belongs_to :image
end
