class Album < ApplicationRecord
	has_many :images, :dependent => :destroy
	has_one_attached :thumbnail
end
