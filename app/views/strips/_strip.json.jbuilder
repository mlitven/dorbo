json.extract! strip, :id, :title, :body, :published, :created_at, :updated_at
json.url strip_url(strip, format: :json)