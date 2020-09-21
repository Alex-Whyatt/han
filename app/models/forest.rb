class Forest < ApplicationRecord
    has_one_attached :file_thumbnail
    has_one_attached :file

	def self.search(search)
		if search
			where('description LIKE ?',"%#{search}%")
		else
			Forest.all
		end
	end
end
