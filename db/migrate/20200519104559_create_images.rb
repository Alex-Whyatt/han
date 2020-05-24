class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :title
      t.integer :views
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
