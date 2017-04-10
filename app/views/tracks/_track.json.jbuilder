json.extract! track, :id, :artist, :album, :song, :genre, :year, :created_at, :updated_at
json.url track_url(track, format: :json)