class DropAlbumisation < ActiveRecord::Migration[6.0]
  def up
  	drop_table :albumisations
  end
end
