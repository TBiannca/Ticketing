json.extract! event, :id, :name, :date, :location, :seats, :created_at, :updated_at, :price
json.url event_url(event, format: :json)
