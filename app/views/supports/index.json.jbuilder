json.array!(@supports) do |support|
  json.extract! support, :id, :link
  json.url support_url(support, format: :json)
end
