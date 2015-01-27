json.array!(@chars) do |char|
  json.extract! char, :id, :name
  json.url char_url(char, format: :json)
end
