json.array!(@albums) do |album|
  json.extract! album, :id, :artist, :title, :year, :song_count, :user_id
  json.url album_url(album, format: :json)
end
