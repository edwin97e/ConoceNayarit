json.extract! bus, :id, :name, :body, :created_at, :updated_at
json.url bus_url(bus, format: :json)
