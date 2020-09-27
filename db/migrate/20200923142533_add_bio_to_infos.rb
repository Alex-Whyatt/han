class AddBioToInfos < ActiveRecord::Migration[6.0]
  def change
    add_column :infos, :bio, :string
  end
end
