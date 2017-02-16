json.extract! post, :id, :description, :is_active, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)