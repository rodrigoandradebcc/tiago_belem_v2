json.array!(@movies) do |movie|
  json.extract! movie, :id, :link
  json.url movie_url(movie, format: :json)
end
