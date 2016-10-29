json.extract! user, :id, :first_name, :last_name, :classification, :email, :organization, :password_digest, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)