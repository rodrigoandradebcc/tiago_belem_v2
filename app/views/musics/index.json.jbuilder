json.array!(@musics) do |music|
  json.extract! music, :id, :link
  json.url music_url(music, format: :json)
end
