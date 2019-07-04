json.extract! route, :id, :name, :body, :sites, :created_at, :updated_at
json.url route_url(route, format: :json)
