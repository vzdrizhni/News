json.extract! post, :id, :title, :body, :date, :image_data, :created_at, :updated_at
json.url post_url(post, format: :json)
