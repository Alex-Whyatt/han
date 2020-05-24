class Album < ApplicationRecord
	has_many :albumisations, :dependent => :destroy
	has_many :images, :through => :albumisations
	has_one_attached :thumbnail
end
