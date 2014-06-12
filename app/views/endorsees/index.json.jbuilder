json.array!(@endorsees) do |endorsee|
  json.extract! endorsee, :id, :link
  json.url endorsee_url(endorsee, format: :json)
end
