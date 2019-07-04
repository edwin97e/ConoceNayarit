json.extract! flight, :id, :name, :body, :created_at, :updated_at
json.url flight_url(flight, format: :json)
