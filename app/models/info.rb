class Info < ApplicationRecord
	has_one_attached :avatar

	def avatar_resized
  		return self.avatar.variant(resize: "300x300!").processed
 	end
end
