class AddFeaturedToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :featured, :boolean, default: false
  end
end
