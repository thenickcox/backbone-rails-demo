class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :artist
      t.string :title
      t.integer :year
      t.integer :song_count
      t.integer :user_id

      t.timestamps
    end
  end
end
