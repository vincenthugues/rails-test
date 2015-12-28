json.array!(@places) do |place|
  json.extract! place, :id, :name, :latitude, :longitude, :notes, :hashtags
  json.url place_url(place, format: :json)
end
