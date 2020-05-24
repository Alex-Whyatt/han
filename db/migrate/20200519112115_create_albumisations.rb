class CreateAlbumisations < ActiveRecord::Migration[6.0]
	def self.up
      create_table :albumisations do |t|
	      t.integer :album_id, :photo_id, :position
	      t.timestamps
      end
	end
end


